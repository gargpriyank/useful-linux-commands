# Display current default kernel
grubby --default-kernel

# List all kernel menu entries
grubby --info=ALL

# Modify the default kernel
grubby --set-default /boot/vmlinuz-5.17.x86_64

# Update GRUB_TIMEOUT by editing /etc/default/grub file
vi /etc/default/grub
update-grub



