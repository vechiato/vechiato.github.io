---
author: "Marcus Vechiato"
title: "Search and identify bad sectors on a storage device using badblocks"
date: "2015-11-03"
thumbnail: "/obsidian/linux_thumb.jpeg"
aliases: 
  - /blog/badblocks/
publish: true
tags: 
  - linux
--- 

# `Badblocks`

The `badblocks` command in Linux is used to search for and identify bad sectors on a storage device, such as a hard drive or solid-state drive. It can help detect damaged or faulty sectors that may affect the reliability of the disk and the data stored on it.  

## How it works:

The `badblocks` command scans a disk for bad sectors by writing test patterns (usually zeros or ones) to the disk and then reading them back. If the data cannot be read correctly after being written, the sector is considered "bad." The command then reports the location of these bad sectors.

## Syntax:

```bash
badblocks [options] <device>
```
Where `<device>` is the path to the disk, e.g., `/dev/sdb`.

## Common Options:

- **`-v`**: Verbose mode; provides more detailed output.
- **`-n`**: Non-destructive read-write test. This option writes test patterns to the disk but does not overwrite your data.
- **`-s`**: Shows the progress of the test.
- **`-w`**: Performs a destructive write-test, which writes to every block on the disk to check for errors. This will overwrite any data on the disk.
- **`-l <file>`**: Outputs a list of bad blocks to the specified file.
- **`-b <block_size>`**: Specifies the block size (in bytes) to use during testing.
- **`-p <passes>`**: Specifies the number of passes to make during testing.
- **`-f`**: Forces badblock detection even if the disk is already in use (dangerous in some cases).

## Example Usage:

1. **Check for bad blocks (non-destructive)**:
```bash
badblocks -n -v /dev/sdb
```
2. **Destructive write test**:
```bash
badblocks -w -v /dev/sdb
```
This command will write test patterns to the entire disk and check for bad sectors, but it will overwrite all data on the disk.

## Important Notes:

- **Destructive Testing**: The `-w` option overwrites all data on the disk, so it is recommended to back up any important data before using this option.
- **Time-Consuming**: Running `badblocks` can take a long time, especially on large disks, because it reads and writes to every block of the device.
- **Not Always Accurate**: While `badblocks` is a useful tool, it doesn't always catch all possible hardware failures, and it may not detect all types of issues, such as wear on an SSD.
- **SMART Monitoring**: For more advanced disk health monitoring, it's also a good idea to use tools like `smartctl` (part of the `smartmontools` package) to check the SMART status of the drive.

## Use Cases:

- **Preventive Maintenance**: Running `badblocks` periodically can help detect failing drives early, potentially avoiding data loss.
- **After Data Recovery**: If you've recovered data from a damaged disk, running `badblocks` can help identify additional issues before using the disk again.
- **Drive Health Assessment**: For drives showing signs of failure (slow performance, errors), `badblocks` can help pinpoint the extent of damage.

In summary, `badblocks` is a helpful tool for identifying bad sectors and assessing the health of a storage device, but care must be taken when using it, especially with destructive options.