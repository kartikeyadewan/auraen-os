# Auraen OS

Zero setup. Maximum capability.

A developer-first operating system with ready-to-use environments for coding out of the box.

<p align="center">
  <img src="https://img.shields.io/badge/status-in%20development-yellow?style=flat-square" alt="Status">
  <img src="https://img.shields.io/badge/base-Arch%20Linux-blue?style=flat-square" alt="Base">
  <img src="https://img.shields.io/badge/license-MIT-green?style=flat-square" alt="License">
</p>

---

## Overview

Auraen OS eliminates setup friction for developers. Pre-configured environment — boot and start coding.

- Pre-installed tools (Git, Node, Python, Docker, etc.)
- Clean GNOME-based interface
- Plug-and-play — boot, start working

## auraen CLI

The `auraen` command lets you install development stacks on any Arch-based system:

```bash
auraen install web       # Node.js + npm
auraen install python    # Python + pip + virtualenv + Jupyter
auraen install cpp       # GCC + GDB + CMake + Make
auraen install all       # Everything above
```

See [scripts/auraen-cli.sh](scripts/auraen-cli.sh) for the source.

## Repository Structure

```
configs/       System configuration profiles
docs/          Architecture, vision, build documentation
iso/           ISO build profiles and assets
packages/      Package lists and custom PKGBUILDs
scripts/       Setup scripts and CLI tools
ui/            Desktop theme and UI customization
```

## Quick Start

```bash
git clone https://github.com/kartikeyadewan/auraen-os.git
cd auraen-os

# Install a development stack on an existing Arch system
bash scripts/auraen-cli.sh install web
```

## Building from Source

Built on [Arch Linux](https://archlinux.org) using [archiso](https://gitlab.archlinux.org/archlinux/archiso).

See [docs/building.md](docs/building.md).

## License

MIT — see [LICENSE](LICENSE).

## Status

In active development.
