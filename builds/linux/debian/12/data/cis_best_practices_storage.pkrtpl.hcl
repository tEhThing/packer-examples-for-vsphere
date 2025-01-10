d-i partman-auto/disk string /dev/${device}
d-i partman-auto/method string lvm
d-i partman-lvm/confirm boolean true
d-i partman-lvm/confirm_nooverwrite boolean true
d-i partman-lvm/device_remove_lvm boolean true

# Force UEFI booting ('BIOS compatibility' will be lost). Default: false.
d-i partman-efi/non_efi_system boolean true

# Ensure the partition table is GPT - this is required for EFI
d-i partman-partitioning/choose_label select gpt
d-i partman-partitioning/default_label string gpt

d-i partman-basicfilesystems/no_swap boolean false
d-i partman-auto/expert_recipe string \
  custom :: \
    100 100 512 ext4 \
    $primary{ } \
    method{ format } \
    format{ } \
    use_filesystem{ } \
    filesystem{ ext4 } \
    mountpoint{ /boot } \
    . \
    100 100 512 ext4 \
    $primary{ } \
    method{ format } \
    format{ } \
    use_filesystem{ } \
    filesystem{ ext4 } \
    mountpoint{ /boot/efi } \
    . \
    100 100 -1 ext4 \
    $primary{ } \
    method{ format } \
    format{ } \
    use_filesystem{ } \
    filesystem{ ext4 } \
    mountpoint{ / } \
    . \
    100 100 4096 swap \
    $primary{ } \
    method{ swap } \
    format{ } \
    . \
    100 100 4096 ext4 \
    $primary{ } \
    method{ format } \
    format{ } \
    use_filesystem{ } \
    filesystem{ ext4 } \
    mountpoint{ /var } \
    . \
    100 100 4096 ext4 \
    $primary{ } \
    method{ format } \
    format{ } \
    use_filesystem{ } \
    filesystem{ ext4 } \
    mountpoint{ /var/log } \
    . \
    100 100 4096 ext4 \
    $primary{ } \
    method{ format } \
    format{ } \
    use_filesystem{ } \
    filesystem{ ext4 } \
    mountpoint{ /var/log/audit } \
    . \
    100 100 4096 ext4 \
    $primary{ } \
    method{ format } \
    format{ } \
    use_filesystem{ } \
    filesystem{ ext4 } \
    mountpoint{ /home } \
    . \

d-i partman-partitioning/confirm_write_new_label boolean true
d-i partman/choose_partition select finish
d-i partman/confirm boolean true
d-i partman/confirm_nooverwrite boolean true
