
ARG IMAGE=ghcr.io/fedora/kinoite
FROM ${IMAGE}

LABEL org.opencontainers.image.description="My Custom Bazzite OS"

# 安装软件包
RUN rpm-ostree install \
    neofetch \
    fish

# 复制壁纸
COPY branding/myos-wallpaper.png /usr/share/backgrounds/

# 环境变量
ENV MY_CUSTOM_OS=1
