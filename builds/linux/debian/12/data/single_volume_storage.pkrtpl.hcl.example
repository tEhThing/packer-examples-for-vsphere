d-i partman-auto/disk string /dev/${device}
d-i partman-auto/method string regular

# Force UEFI booting ('BIOS compatibility' will be lost). Default: false.
d-i partman-efi/non_efi_system boolean true

# Ensure the partition table is GPT - this is required for EFI
d-i partman-partitioning/choose_label select gpt
d-i partman-partitioning/default_label string gpt

d-i partman-basicfilesystems/no_swap boolean false
d-i partman-auto/expert_recipe string \
  custom :: \
    1 1 512 fat32 \
    $primary{ } $bootable{ } \
    method{ efi } format{ } \
    use_filesystem{ } filesystem{ fat32 } \
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

d-i partman-partitioning/confirm_write_new_label boolean true
d-i partman/choose_partition select finish
d-i partman/confirm boolean true
d-i partman/confirm_nooverwrite boolean true
