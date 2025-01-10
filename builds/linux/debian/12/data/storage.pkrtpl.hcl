d-i partman-auto/method string regular

# Use the first disk for partitioning
d-i partman-auto/disk string /dev/sda

# Custom partitioning recipe for CIS/Debian best practices
d-i partman-auto/expert_recipe string \
      multi :: \
              256 256 256 fat32 \
                      $primary{ } $bootable{ } \
                      method{ efi } format{ } \
                      use_filesystem{ } filesystem{ fat32 } \
                      mountpoint{ /boot/efi } \
              . \
              256 256 256 ext2 \
                      $primary{ } \
                      method{ format } format{ } \
                      use_filesystem{ } filesystem{ ext2 } \
                      mountpoint{ /boot } \
              . \
              64 512 300% linux-swap \
                      method{ swap } format{ } \
              . \
              1024 5120 1000000000 ext4 \
                      method{ format } format{ } \
                      use_filesystem{ } filesystem{ ext4 } \
                      mountpoint{ / } \
              . \
              512 2048 1000000000 ext4 \
                      method{ format } format{ } \
                      use_filesystem{ } filesystem{ ext4 } \
                      mountpoint{ /var } \
              . \
              512 2048 1000000000 ext4 \
                      method{ format } format{ } \
                      use_filesystem{ } filesystem{ ext4 } \
                      mountpoint{ /tmp } \
              . \
              1024 4096 1000000000 ext4 \
                      method{ format } format{ } \
                      use_filesystem{ } filesystem{ ext4 } \
                      mountpoint{ /home } \
              .

# Ensure the partition table is GPT - this is required for EFI
d-i partman-partitioning/choose_label select gpt
d-i partman-partitioning/default_label string gpt

# Automatically partition the disk without confirmation
d-i partman-partitioning/confirm_write_new_label boolean true
d-i partman/choose_partition select finish
d-i partman/confirm boolean true
d-i partman/confirm_nooverwrite boolean true
