# CS 1142 – LC3Tools in the browser

This repository runs [LC3Tools](https://github.com/chiragsakhuja/lc3tools) 2.1.0 in a GitHub Codespace, so you can use the LC-3 assembler and simulator from any browser with nothing to install.

## Getting started

1. Click the green **Code** button, open the **Codespaces** tab, and click **Create codespace on main**.
   The first launch takes a few minutes while the container is built.
2. When it's ready, a browser tab opens with the virtual desktop. If it doesn't, open the **Ports** tab at the bottom of VS Code and click the globe icon next to **LC3Tools desktop (6080)**.
3. Click **Connect**. LC3Tools opens automatically.

If you close LC3Tools, right-click the desktop and choose **LC3Tools**, or run `lc3tools &` in the VS Code terminal.

## Where to keep your files

Save your `.asm` files under `/workspaces/<this repo's name>` (the folder VS Code shows). Files there are kept when the codespace stops. Commit and push them to keep a copy on GitHub. A sample program is in `examples/hello.asm`.

## Saving your free hours

Codespaces stop on their own after 30 minutes idle. To stop one sooner, go to <https://github.com/codespaces>, click **…** next to it, and choose **Stop codespace**.
