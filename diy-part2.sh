#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.199.1/g' package/base-files/files/bin/config_generate
#sed -i 's/openwrt.xyz/hiwifi.com/g' /package/base-files/files/etc/hotplug.d/iface/11-gateway 

# Modify hostname
sed -i 's/OpenWrt/HC5962/g' package/base-files/files/bin/config_generate 

# Modify ssidname
sed -i 's/OpenWrt/HiWiFi/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 修改版本号
sed -i "s/OpenWrt /Onlywl $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

#开启MU-MIMO
#sed -i 's/mu_beamformer=0/mu_beamformer=1/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 修改默认主题为material
sed -i 's/luci-theme-bootstrap/luci-theme-material/g' feeds/luci/collections/luci/Makefile

# Add kernel build user
#[ -z $(grep "CONFIG_KERNEL_BUILD_USER=" .config) ] &&
    #echo 'CONFIG_KERNEL_BUILD_USER="Onlywl"' >>.config ||
    #sed -i 's@\(CONFIG_KERNEL_BUILD_USER=\).*@\1$"Onlywl"@' .config

# Add kernel build domain
#[ -z $(grep "CONFIG_KERNEL_BUILD_DOMAIN=" .config) ] &&
    #echo 'CONFIG_KERNEL_BUILD_DOMAIN="GitHub Actions"' >>.config ||
    #sed -i 's@\(CONFIG_KERNEL_BUILD_DOMAIN=\).*@\1$"GitHub Actions"@' .config
