# Uncompress and extract initrd.img boot image file in current directory
xzcat initrd.img | cpio -idmv
