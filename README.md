# CS 1142 – LC3Tools in the browser

This repository runs [LC3Tools](https://github.com/chiragsakhuja/lc3tools) 2.1.0 in a GitHub Codespace, so you can use the LC-3 assembler and simulator from any browser with nothing to install.

## Getting started

### 1. Create your codespace

Click the green **Code** button, open the **Codespaces** tab, and click **Create codespace on main**. The first time, building takes a few minutes. When it's done, VS Code opens with this repository's files on the left.

### 2. Open a terminal

In VS Code, open the menu (the **☰** icon at the top left in the browser version) and choose **Terminal → New Terminal**. You can also press **Ctrl+`** (that's the backtick key, above Tab). A terminal panel opens at the bottom of the window with a prompt like:

```
@your-username ➜ /workspaces/lc3tools-codespace (main) $
```

### 3. Start LC3Tools

Type this at the prompt and press **Enter**:

```bash
lc3tools
```

You'll see:

```
LC3Tools is opening on the desktop (port 6080). Messages go to /tmp/lc3tools.log
```

To open a particular file, put its name after the command, for example `lc3tools examples/hello.asm`.

### 4. Go to the desktop

LC3Tools runs on a virtual desktop, not inside VS Code. To see it:

1. Click the **Ports** tab next to **Terminal** at the bottom of VS Code.
2. Find **LC3Tools desktop (6080)** and click the globe icon (**Open in Browser**) next to it.
3. In the new browser tab, click **Connect**.

The LC3Tools window is on that desktop. Keep the tab open while you work, and switch back to it whenever you run `lc3tools` again.

LC3Tools also opens by itself when the codespace starts. If it's already on the desktop, you don't need to start it again.

## Where to keep your files

Save your `.asm` files under `/workspaces/<this repo's name>` (the folder VS Code shows). Files there are kept when the codespace stops. Commit and push them to keep a copy on GitHub. A sample program is in `examples/hello.asm`.

## Saving your free hours

Codespaces stop on their own after 30 minutes idle. To stop one sooner, go to <https://github.com/codespaces>, click **…** next to it, and choose **Stop codespace**.
