#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p22:5525504:9af2058570ce6d2ed6a150565acdb3f8a59b5404; then
  log -t recovery "Installing new recovery image"
  applypatch EMMC:/dev/block/mmcblk0p8:5187584:bc4925d19eb15c8654c5889cda9561a2ee46a6b0 EMMC:/dev/block/mmcblk0p22 9af2058570ce6d2ed6a150565acdb3f8a59b5404 5525504 bc4925d19eb15c8654c5889cda9561a2ee46a6b0:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
