#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p22:5138432:2bc2fc6461cff6a99a034efa218eb077bbee6ee8; then
  log -t recovery "Installing new recovery image"
  applypatch EMMC:/dev/block/mmcblk0p8:4800512:e0ef58e9f232823939b8614cc6b3b65860759e99 EMMC:/dev/block/mmcblk0p22 2bc2fc6461cff6a99a034efa218eb077bbee6ee8 5138432 e0ef58e9f232823939b8614cc6b3b65860759e99:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
