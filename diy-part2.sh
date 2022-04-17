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
#sed -i 's/192.168.1.1/192.168.199.1/g' package/base-files/files/bin/config_generate
#sed -i 's/openwrt.xyz/hiwifi.com/g' /package/base-files/files/etc/hotplug.d/iface/11-gateway 

# Modify hostname
#sed -i 's/OpenWrt/HC5962/g' package/base-files/files/bin/config_generate 

# Modify ssidname
#sed -i 's/OpenWrt/HiWiFi/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 修改默认主题为material
sed -i 's/luci-theme-bootstrap/luci-theme-material/g' feeds/luci/collections/luci/Makefile
