# VCRedistAIO - Visual C++ Redistributable All-in-One Installer

A comprehensive, automated installer for all essential Microsoft Visual C++ Runtimes. This package is designed to simplify the setup of a new Windows environment, ensuring that all necessary runtimes are installed to prevent errors when running a wide variety of applications and games.

![Version](https://img.shields.io/badge/Version-2025.10.13-blue.svg)
![Platform](https://img.shields.io/badge/Platform-Windows-0078D6.svg)
![Architecture](https://img.shields.io/badge/Architecture-x86%20%7C%20x64-lightgrey.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)

## Overview

Many applications, especially games and productivity software, require specific versions of Microsoft Visual C++ Redistributable packages to run correctly. Forgetting to install them can lead to common errors like "missing MSVCP140.dll" or "side-by-side configuration is incorrect".

This All-in-One (AIO) package streamlines the installation process by bundling all the essential redistributables into a single installer, driven by a smart batch script.

## Features

- **Automated Installation**: Runs all installers in a single operation.
- **Silent & Passive Mode**: Installs all runtimes in the background with no user interaction required (`/q`, `/qb`, `/passive`).
- **Automatic Privilege Escalation**: The script automatically checks for administrator rights and will prompt for them if not found.
- **Smart Architecture Detection**: Automatically detects if your Windows OS is 32-bit (x86) or 64-bit (x64) and installs the appropriate runtimes.
- **Comprehensive Coverage**: Includes all major and commonly required Visual C++ Redistributable versions from 2005 to the present.
- **No Restarts**: The `/norestart` flag is used to prevent the system from automatically rebooting after each installation.

## Getting Started

1.  Navigate to the [**Releases**](https://github.com/xyzsteven/VCRedistAIO/releases) page of this repository.
2.  Download the latest release archive (`VCRedistAIO2025.10.13.zip`).
3.  Extract the contents of the `.zip` file to a folder on your computer.
4.  Right-click on the `01. INSTALL ALL.bat` script and select **"Run as administrator"**.

The script will handle the rest. Once the command prompt window displays "Installation completed successfully," the process is finished.

## Package Contents

This package installs the following Microsoft Visual C++ Redistributable versions:

-   **Visual C++ 2005 SP1** (x86 & x64)
-   **Visual C++ 2008 SP1** (x86 & x64)
-   **Visual C++ 2010 SP1** (x86 & x64)
-   **Visual C++ 2012 Update 4** (x86 & x64)
-   **Visual C++ 2013** (x86 & x64)
-   **Visual C++ 2015-2022** (x86 & x64)

*Note: On a 32-bit Windows system, only the x86 versions will be installed.*

## Credits

-   **Original Script**: W1zzard @ TechPowerUp
-   **Packaging**: xyzsteven

This repository is maintained for accessibility and distribution.

## License

This project is distributed under the MIT License. See the `LICENSE` file for more information.
