#!/usr/bin/env sh
python3 avbtool.py make_vbmeta_image --key rsa4096.pem --algorithm SHA256_RSA4096 --flag 2 \
    --chain_partition boot:1:keys/boot.bin \
    --chain_partition dtbo:6:keys/dtbo.bin \
    --chain_partition socko:13:keys/socko.bin \
    --chain_partition odmko:14:keys/odmko.bin \
    --chain_partition vbmeta_system:2:keys/vbmeta_system.bin \
    --chain_partition vbmeta_system_ext:3:keys/vbmeta_system_ext.bin \
    --chain_partition vbmeta_vendor:4:keys/vbmeta_vendor.bin \
    --chain_partition vbmeta_product:5:keys/vbmeta_product.bin \
    --chain_partition l_modem:7:keys/l_modem.bin \
    --chain_partition l_ldsp:8:keys/l_ldsp.bin \
    --chain_partition l_gdsp:9:keys/l_gdsp.bin \
    --chain_partition pm_sys:10:keys/pm_sys.bin \
    --chain_partition l_agdsp:11:keys/l_agdsp.bin \
    --chain_partition l_cdsp:12:keys/l_cdsp.bin \
    --padding_size 20480 --output vbmeta-sign-custom.img
    
python3 vbmeta_pad.py