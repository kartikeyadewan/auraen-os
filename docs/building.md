# Building Auraen OS

Auraen OS is built on [Arch Linux](https://archlinux.org) using [archiso](https://gitlab.archlinux.org/archlinux/archiso).

## Prerequisites

You need an existing Arch Linux installation (or a compatible environment) with the following packages:

```bash
sudo pacman -S archiso arch-install-scripts awk dosfstools \
  e2fsprogs findutils grub gzip libarchive libisoburn mtools \
  openssl pacman sed squashfs-tools
```

## Build the ISO

```bash
# Clone the repository
git clone https://github.com/kartikeyadewan/auraen-os.git
cd auraen-os

# Build the ISO (replace paths as needed)
sudo mkarchiso -v -w /tmp/auraen-work -o /tmp/auraen-out iso/
```

The ISO will appear in `/tmp/auraen-out/`.

## Test the ISO

Use QEMU to test the built ISO:

```bash
# BIOS boot
run_archiso -i /tmp/auraen-out/auraen-os-*.iso

# UEFI boot
run_archiso -u -i /tmp/auraen-out/auraen-os-*.iso
```

## Writing to USB

```bash
sudo dd if=/path/to/auraen-os-*.iso of=/dev/sdX bs=4M status=progress
```

Replace `/dev/sdX` with your USB device.

## Directory Structure

```
iso/
├── airootfs/          # Root filesystem overlay
├── efiboot/           # EFI boot files
├── grub/              # GRUB configuration
├── syslinux/          # Syslinux configuration
└── profiledef.sh      # Profile definition
```

## Customization

Edit the files in `iso/airootfs/` to customize the live environment. Package lists can be modified in `packages/`.
