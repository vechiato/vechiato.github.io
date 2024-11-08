---
author: "Marcus Vechiato"
title: "Using screen for Persistent Terminal Sessions"
date: "2016-02-23"
thumbnail: "/obsidian/linux_thumb.jpeg"
aliases: 
  - /blog/screen/
publish: true
tags: 
  - linux
--- 

#  `screen` 

`screen` is a terminal multiplexer that allows you to start a session, run commands, and detach from it, keeping the session running in the background. You can later reattach to the session even if the original terminal connection was lost, which is useful for remote tasks that need resilience against disconnections.
![image](/obsidian/linux_thumb.jpeg)
### Basic Commands

#### Start a New Session
To start a new session with a custom name (e.g., `my_session`):
```bash
screen -S my_session
```

#### Run a Command

Inside the screen session, run any long-running command:
```bash
sudo fsck /dev/sdb1
```

#### Detach from a Session

To leave a screen session running in the background:

Press Ctrl+A followed by D (detaches from the session without stopping the process).

#### Reattach to a Session

To reconnect to a session after detaching or reconnecting remotely:
```bash
screen -r my_session
```
If there’s only one session, you can simply use:
```bash
screen -r
```

#### List Active Sessions

If you have multiple sessions, list them with:
```bash
screen -ls
```

#### Terminate a Session

To close a screen session:
- Reattach to it (if detached) with screen -r.
- Type exit to terminate the session.

#### Additional Tips:

- Scroll through output: Press Ctrl+A then ```[``` to enter scrollback mode. Use arrow keys to scroll. Press Esc to exit.
- Split windows: screen can split into multiple windows within a single session, allowing multitasking in the same terminal.

### Basic Commands for Split Screen in `screen`

1. **Start a Screen Session**: First, start a new `screen` session or attach to an existing one.
```bash
screen -S my_session
```
2. **Split Horizontally**: Press `Ctrl+A` then `S`.
- This creates a new horizontal split, but it will be empty initially.
3. **Split Vertically**: Press `Ctrl+A` then `|`.
- This creates a vertical split in the active region.
4. **Navigate Between Panes**: To move between the panes, use:
```bash
Ctrl+A then Tab
```
5. **Open a New Window in a Pane**: Once you've selected a pane, press:
```bash
Ctrl+A then C
```
- This creates a new window within that pane where you can run commands.
6. **Close a Split Pane**: To remove a split pane, navigate to it and press:
```bash
Ctrl+A then X
```
- This closes the current split without affecting the other panes.
7. **Remove All Splits**: To exit split-screen mode entirely and return to a single window:
```bash
Ctrl+A then Q
```
- This will close all splits and maximize the current window.


#### Additional Tips

- **List All Open Windows**: You can still have multiple windows open in each pane. To see all windows, press:
```bash
Ctrl+A then "
```
- Use the arrow keys to select the window you want to view.
- **Resize Panes**: Unfortunately, `screen` doesn’t support direct resizing of split panes. However, if you need flexible resizing, consider using `tmux`, which provides more control over pane sizes.

#### Example Workflow

1. Start a `screen` session: `screen -S work_session`
2. Split the screen horizontally: `Ctrl+A S`
3. Move to the new split: `Ctrl+A Tab`
4. Open a new window in the split: `Ctrl+A C`
5. Run your commands in each pane as needed.

Using these commands, you can monitor different processes, files, or commands simultaneously within one terminal session!