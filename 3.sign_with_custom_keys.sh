#!/usr/bin/env sh
python3 avbtool.py add_hash_footer \
    --image apatch_boot.img \
    --partition_name boot \
    --partition_size 67108864 \
    --key rsa4096_vbmeta.pem \
    --algorithm SHA256_RSA4096 \
    --prop com.android.build.boot.fingerprint:UNISOC/ums512_lwfq_1h10_Natv/ums512_1h10:11/RP1A.201005.001/10338:user/release-keys \
    --prop com.android.build.boot.os_version:11