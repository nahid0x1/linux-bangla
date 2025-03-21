#!/bin/bash

# Detect Linux Distribution
if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS=$ID
else
    echo "Unsupported Linux distribution!"
    exit 1
fi

# install fonts
install_fonts() {
    echo "Installing Bangla fonts for $OS..."

    case "$OS" in
        ubuntu|debian)
            sudo apt update
            sudo apt install -y fonts-beng fonts-noto-core fonts-noto-extra fonts-noto-ui-core
            ;;
        arch|manjaro)
            sudo pacman -Syu --noconfirm noto-fonts noto-fonts-cjk
            ;;
        fedora)
            sudo dnf install -y google-noto-sans-bengali-fonts
            ;;
        *)
            echo "Your distribution is not supported."
            exit 1
            ;;
    esac
}

# copy Windows Bangla fonts if available
install_windows_fonts() {
    FONT_DIR="$HOME/.local/share/fonts"
    mkdir -p "$FONT_DIR"

    for font in "Vrinda.ttf" "SiyamRupali.ttf" "SolaimanLipi.ttf"; do
        if [ -f "$font" ]; then
            cp "$font" "$FONT_DIR/"
            echo "Installed $font"
        fi
    done

    # Refresh font cache
    fc-cache -fv
}

# set text scaling for better Bangla font visibility
set_text_scaling() {
    SCALE=3.0  # Default Bangla font size set to 3.0
    gsettings set org.gnome.desktop.interface text-scaling-factor "$SCALE"
    echo "Text scaling set to $SCALE"
}

# Execute functions
install_fonts
install_windows_fonts
set_text_scaling

echo "Bangla font setup completed with font size 3.0!"
