#!/bin/bash

# qemu-system-arm \
# -M orangepi-pc -m 1024 -cpu cortex-a7 -dtb boot/dtb/sun8i-h3-orangepi-pc.dtb \
# -kernel boot/vmlinuz-6.18.35-current-sunxi -initrd boot/uInitrd-6.18.35-current-sunxi \
# -append 'earlyprintk loglevel=8 earlycon=uart8250,mmio32,0x1c28000,115200n8 console=ttyS0 root=/dev/mmcblk0p1' \
# -nographic -serial stdio -monitor none \
# -drive file=AArmbian_community_26.8.0-trunk.170_Orangepizero_trixie_current_6.18.35_minimal.img,format=raw,if=none,id=d1 \
# -device sd-card,drive=d1 \
# -nic user,model=allwinner-sun8i-emac,hostfwd=tcp::50022-:22

qemu-system-arm \
-M orangepi-pc -m 1024 -cpu cortex-a7 -dtb boot/dtb/sun8i-h3-orangepi-pc.dtb \
-kernel boot/vmlinuz-6.18.35-current-sunxi -initrd boot/uInitrd-6.18.35-current-sunxi \
-append 'earlyprintk loglevel=8 earlycon=uart8250,mmio32,0x1c28000,115200n8 console=ttyS0 root=/dev/mmcblk0p1' \
-nographic -serial stdio -monitor none \
-drive file=Armbian_community_26.8.0-trunk.170_Orangepizero_trixie_current_6.18.35_minimal.img,format=raw,if=none,id=d1 \
-device sd-card,drive=d1 \
-nic user,model=allwinner-sun8i-emac,hostfwd=tcp::50022-:22,hostfwd=tcp::8123-:8123
