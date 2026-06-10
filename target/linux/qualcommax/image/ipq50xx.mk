define Device/jdcloud_be6500
  $(call Device/FitImage)
  DEVICE_VENDOR := JDCloud
  DEVICE_MODEL := BE6500
  DEVICE_DTS := ipq5332-jdcloud-be6500
  DEVICE_DTS_DIR := $(TOPDIR)/target/linux/qualcommax/dts
  DEVICE_DTS_CONFIG := config@mi01.6
  SUPPORTED_DEVICES := jdcloud,be6500
  DEVICE_PACKAGES := kmod-ath12k kmod-qca-nss-dp luci luci-ssl apk-mbedtls block-mount uboot-envtools e2fsprogs kmod-fs-ext4
  # FORCE FACTORY IMAGE
  IMAGES += factory.bin
  IMAGE/factory.bin := append-rootfs | pad-rootfs | pad-to 64k
endef
TARGET_DEVICES += jdcloud_be6500
