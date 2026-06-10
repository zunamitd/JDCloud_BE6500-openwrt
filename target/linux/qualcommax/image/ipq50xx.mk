define Device/jdcloud_be6500
  $(call Device/FitImage)
  DEVICE_VENDOR := JDCloud
  DEVICE_MODEL := BE6500
  DEVICE_DTS := ipq5332-jdcloud-be6500
  DEVICE_DTS_DIR := $(TOPDIR)/target/linux/qualcommax/dts
  DEVICE_DTS_CONFIG := config@mi01.6
  SUPPORTED_DEVICES := jdcloud,be6500
  # ---------- FIX UBI GEOMETRY ----------
  BLOCKSIZE := 0x20000
  PAGESIZE  := 0x800
  SUBPAGESIZE := 0x800

  KERNEL_IN_UBI := 1

  IMAGES += factory.ubi

  IMAGE/factory.ubi := append-ubi | check-size $$$$(KERNEL_SIZE)
  DEVICE_PACKAGES := kmod-ath12k kmod-qca-nss-dp luci luci-ssl apk-mbedtls block-mount uboot-envtools e2fsprogs kmod-fs-ext4
endef
TARGET_DEVICES += jdcloud_be6500
