FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

ARG LC3TOOLS_VERSION=2.1.0
ARG LC3TOOLS_SHA256=9e740f53b42ccaa7356b50059f20cacba732cdd2cbd643cebd8dd964c7a977e1

# Libraries the Electron-based LC3Tools GUI needs
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y --no-install-recommends \
        libgtk-3-0 libnss3 libasound2 libxss1 libgbm1 libnotify4 libsecret-1-0 \
        libxtst6 libatspi2.0-0 libdrm2 libxkbfile1 xdg-utils fonts-dejavu-core \
    && rm -rf /var/lib/apt/lists/*

# Download LC3Tools from the official release, verify it, and unpack it
# (AppImages can't mount via FUSE inside a container, so extract instead)
RUN cd /tmp \
    && curl -fsSL -o lc3tools.AppImage \
        "https://github.com/chiragsakhuja/lc3tools/releases/download/v${LC3TOOLS_VERSION}/LC3Tools-${LC3TOOLS_VERSION}.AppImage" \
    && echo "${LC3TOOLS_SHA256}  lc3tools.AppImage" | sha256sum -c - \
    && chmod +x lc3tools.AppImage \
    && ./lc3tools.AppImage --appimage-extract > /dev/null \
    && mv squashfs-root /opt/lc3tools \
    && chmod -R a+rX /opt/lc3tools \
    && rm lc3tools.AppImage

COPY lc3tools.sh /usr/local/bin/lc3tools
RUN chmod +x /usr/local/bin/lc3tools

# Start LC3Tools with the desktop. The desktop-lite feature keeps an
# existing ~/.fluxbox/apps, so this survives its install.
RUN mkdir -p /home/vscode/.fluxbox \
    && printf '%s\n' \
        '[startup] {lc3tools}' \
        '[transient] (role=GtkFileChooserDialog)' \
        '  [Dimensions]	{70% 70%}' \
        '  [Position]	(CENTER)	{0 0}' \
        '[end]' > /home/vscode/.fluxbox/apps \
    && chown -R vscode:vscode /home/vscode/.fluxbox
