# orangepi
Orange Pi emulation 1G ram

- extract an Armbian image, for example: Armbian_community_26.8.0-trunk.7_Orangepizero_trixie_current_6.18.40_minimal.img.xy

- mount image 

- copy /boot from mounted the image

Use the machine trough ssh:
```
ssh -p 50022 root@localhost
```

---

```
# Emulátor regisztrálása
docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
```

```
docker run --rm -it --platform linux/arm/v7 arm32v7/ubuntu uname -m
# kimenet: armv7l
```

```
docker run --rm -it --platform linux/arm/v7 alpine uname -m
```


