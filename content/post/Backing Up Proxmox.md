---
author: "Marcus Vechiato"
title: "Backing Up Proxmox VMs to an External USB Drive On-Demand"
date: "2025-04-23"
#thumbnail: "/obsidian/effective-sre-scope.png"
publish: true
tags: 
  - proxmox
  - homelab
--- 

# Backing Up Proxmox VMs to an External USB Drive On-Demand

I'll guide you through setting up an on-demand backup solution for your Proxmox VMs using an external USB drive. This approach will allow you to perform backups only when you explicitly want to, rather than on an automated schedule.

## Step 1: Prepare Your USB Drive

1. **Connect your USB drive** to the Proxmox host
2. **Identify the drive**:
   ```bash
   ls -la /dev/disk/by-id/
   ```

3. **Format the drive** (if needed):
   ```bash
   fdisk /dev/sdX  # Replace sdX with your drive
   mkfs.ext4 /dev/sdX1
   ```

4. **Create a mount point**:
   ```bash
   mkdir -p /mnt/backup_usb
   ```

## Step 2: Create a Backup Script

Create a script that will:
1. Mount the USB drive
2. Perform the backup
3. Unmount the drive when done

```bash
nano /root/backup-to-usb.sh
```

Add the following content:

```bash
#!/bin/bash

# Variables
USB_DEVICE="/dev/disk/by-id/your-usb-drive-id"  # Replace with your actual USB drive ID
MOUNT_POINT="/mnt/backup_usb"
BACKUP_DIR="$MOUNT_POINT/proxmox_backups"
VM_IDS="100 101 102"  # Replace with your VM IDs

# Check if script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root" >&2
    exit 1
fi

# Mount USB drive
echo "Mounting USB drive..."
if ! mount "$USB_DEVICE" "$MOUNT_POINT"; then
    echo "Failed to mount USB drive" >&2
    exit 1
fi

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Get current date for backup naming
DATE=$(date +%Y-%m-%d_%H-%M-%S)

# Backup each VM
for VM_ID in $VM_IDS; do
    echo "Backing up VM $VM_ID..."
    vzdump $VM_ID --compress zstd --mode snapshot --storage local --dumpdir "$BACKUP_DIR" --maxfiles 1
done

# Sync to ensure all data is written
sync

# Unmount USB drive
echo "Unmounting USB drive..."
umount "$MOUNT_POINT"

echo "Backup completed successfully!"
```

Make the script executable:
```bash
chmod +x /root/backup-to-usb.sh
```

## Step 3: Create a Convenient Way to Run the Backup

### Option 1: Create a simple shell alias

Add to your `.bashrc`:
```bash
echo 'alias backup-vms="sudo /root/backup-to-usb.sh"' >> ~/.bashrc
source ~/.bashrc
```

### Option 2: Create a systemd service (but don't enable it)

```bash
nano /etc/systemd/system/proxmox-usb-backup.service
```

Add:
```
[Unit]
Description=Backup Proxmox VMs to USB drive
After=network.target

[Service]
Type=oneshot
ExecStart=/root/backup-to-usb.sh
StandardOutput=journal

[Install]
WantedBy=multi-user.target
```

Reload systemd:
```bash
systemctl daemon-reload
```

## Step 4: Run the Backup When Needed

### Using the script directly:
```bash
sudo /root/backup-to-usb.sh
```

### Using the alias (if you set it up):
```bash
backup-vms
```

### Using systemd (if you set it up):
```bash
sudo systemctl start proxmox-usb-backup
```

## Customization Tips

1. **Specific VMs**: Edit the `VM_IDS` variable in the script to include only the VMs you want to back up
2. **Compression**: Adjust the `--compress` option (zstd, lzo, or gzip)
3. **Retention**: Modify the `--maxfiles` parameter to keep more backup versions

## Troubleshooting

- If the drive isn't mounting, check that it's properly formatted and the device path is correct
- If backups fail, check the Proxmox logs: `tail -f /var/log/syslog`
- Ensure you have enough space on your USB drive for the backups


# Restoring a Proxmox VM from USB Backup

Restoring a VM from your external USB backup is a straightforward process. I'll guide you through the steps to restore a VM from the backups you've created on your USB drive.

## Step 1: Mount Your USB Drive

First, you need to mount the USB drive containing your backups:

```bash
# Identify your USB drive
ls -la /dev/disk/by-id/

# Mount the drive
mount /dev/disk/by-id/your-usb-drive-id /mnt/backup_usb
```

## Step 2: Locate the Backup File

List the available backups on your USB drive:

```bash
ls -la /mnt/backup_usb/proxmox_backups/
```

You should see files with names like `vzdump-qemu-101-2023_10_15-12_00_01.vma.zst` (for a compressed backup of VM 101).

## Step 3: Restore the VM

### Method 1: Using the Proxmox Web UI

This is the easiest method for most users:

1. Log in to the Proxmox web interface
2. Go to **Datacenter** → **Storage** → **local**
3. Click on the **Content** tab
4. Click **Upload**
5. Select **VZDump Backup File**
6. Browse to your backup file on the mounted USB drive
7. Once uploaded, select the backup file
8. Click **Restore**
9. Configure the restore options:
   - VM ID (use the original or a new one)
   - Target storage
   - Other VM configuration options
10. Click **Restore** to start the process

### Method 2: Using the Command Line

For more advanced users or when the web UI isn't accessible:

```bash
# Copy the backup to Proxmox's local storage (optional but recommended)
cp /mnt/backup_usb/proxmox_backups/vzdump-qemu-101-2023_10_15-12_00_01.vma.zst /var/lib/vz/dump/

# Restore the VM
qmrestore /var/lib/vz/dump/vzdump-qemu-101-2023_10_15-12_00_01.vma.zst 101 --storage local
```

Replace:
- `vzdump-qemu-101-2023_10_15-12_00_01.vma.zst` with your actual backup filename
- `101` with the VM ID you want to restore to (can be the original ID or a new one)
- `local` with your target storage name if different

### Method 3: Direct Restore from USB

If you prefer to restore directly from the USB without copying:

```bash
qmrestore /mnt/backup_usb/proxmox_backups/vzdump-qemu-101-2023_10_15-12_00_01.vma.zst 101 --storage local
```

## Step 4: Verify and Start the Restored VM

After restoration completes:

1. Verify the VM configuration in the Proxmox web UI
2. Start the VM:
   ```bash
   qm start 101  # Replace with your VM ID
   ```

## Common Restore Options

When restoring, you can use these additional options:

- `--force`: Overwrite an existing VM
- `--unique`: Assign a new unique MAC address
- `--target-storage`: Specify a different storage for the VM disks
- `--target-vmid`: Specify a different VM ID

Example with options:
```bash
qmrestore /mnt/backup_usb/proxmox_backups/vzdump-qemu-101-2023_10_15-12_00_01.vma.zst 200 --storage local --unique --target-vmid 200
```

## Troubleshooting Restore Issues

1. **Permission errors**: Ensure you're running the commands as root
2. **Storage space**: Verify you have enough space on the target storage
3. **Format compatibility**: Ensure the backup format is compatible with your Proxmox version
4. **Corrupted backups**: If a backup is corrupted, try an older backup
5. **Network configuration**: You may need to adjust network settings after restore if restoring to a different Proxmox host

## Creating a Restore Script

For convenience, you can create a restore script similar to your backup script:

```bash
#!/bin/bash

# Variables
USB_DEVICE="/dev/disk/by-id/your-usb-drive-id"
MOUNT_POINT="/mnt/backup_usb"
BACKUP_DIR="$MOUNT_POINT/proxmox_backups"

# Check if script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root" >&2
    exit 1
fi

# Mount USB drive
echo "Mounting USB drive..."
if ! mount "$USB_DEVICE" "$MOUNT_POINT"; then
    echo "Failed to mount USB drive" >&2
    exit 1
fi

# List available backups
echo "Available backups:"
ls -la "$BACKUP_DIR"

# Ask for backup file
read -p "Enter the backup filename to restore: " BACKUP_FILE

# Ask for VM ID
read -p "Enter the VM ID to restore to: " VM_ID

# Confirm restore
read -p "Restore $BACKUP_DIR/$BACKUP_FILE to VM ID $VM_ID? (y/n): " CONFIRM
if [ "$CONFIRM" != "y" ]; then
    echo "Restore cancelled"
    umount "$MOUNT_POINT"
    exit 0
fi

# Restore VM
echo "Restoring VM..."
qmrestore "$BACKUP_DIR/$BACKUP_FILE" "$VM_ID" --storage local

# Unmount USB drive
echo "Unmounting USB drive..."
umount "$MOUNT_POINT"

echo "Restore completed. Check VM status in Proxmox."
```

Save this as `/root/restore-from-usb.sh` and make it executable:
```bash
chmod +x /root/restore-from-usb.sh
```

Run it when needed:
```bash
sudo /root/restore-from-usb.sh
```
