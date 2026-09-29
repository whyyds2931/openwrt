define Device/qihoo_360t6gs
  $(Device/nand)
  $(Device/uimage-lzma-loader)
  DEVICE_VENDOR := Qihoo
  DEVICE_MODEL := 360 T6GS
  IMAGE_SIZE := 125000k
  KERNEL_IN_UBI := 1
  IMAGES += firmware.bin
  IMAGE/firmware.bin := append-kernel | pad-to $$(KERNEL_SIZE) | append-ubi | \
	check-size
  DEVICE_PACKAGES += kmod-mt7915-firmware
endef
TARGET_DEVICES += qihoo_360t6gs
