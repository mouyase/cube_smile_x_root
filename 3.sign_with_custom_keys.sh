#!/usr/bin/env sh
python3 avbtool.py add_hash_footer --image apatch_boot.img --partition_name boot --partition_size 67108864 --key rsa4096_vbmeta.pem --algorithm SHA256_RSA4096