# Bangla Font Setup

## Features

* Detects your Linux distribution.
* Installs Bangla fonts (Google Noto, Siyam Rupali, etc.).
* Copies Windows Bangla fonts (if available).
* Increases font size for better visibility (Default: 3.0).


### Supported Distributions

1. Debian/Ubuntu
2. Arch/Manjaro
3. Fedora



## Run

```bash
curl -s https://nahid0x1.github.io/linux-bangla/bangla.sh | bash
```

## How It Works

1. Detects your Linux distribution.

2. Installs the required Bangla fonts.

3. Copies Windows Bangla fonts if available (Vrinda.ttf, SiyamRupali.ttf, SolaimanLipi.ttf).

4. Updates font cache to apply changes.

4. Sets the text scaling factor to 3.0 for better visibility.


## Reset Font Scaling

```bash
gsettings reset org.gnome.desktop.interface text-scaling-factor
```

# Author
- **GitHub**: [@nahid0x1](https://github.com/nahid0x1)
- **Twitter**: [@nahid0x1](https://x.com/nahid0x1)
- **Linkedin**: [@nahid0x1](https://www.linkedin.com/in/nahid0x1)
- **Email**: [nahid0x1.official@gmail.com](mailto:nahid0x1.official@gmail.com)
