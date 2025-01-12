partman-auto/text/atomic_scheme ::

512 512 512 fat32
    $primary{ }
    method{ efi }
    format{ }
    use_filesystem{ }
    filesystem{ fat32 }
    mountpoint{ /boot/efi } .

1024 1024 1024 ext4
    $primary{ }
    method{ format }
    format{ }
    use_filesystem{ }
    filesystem{ ext4 }
    mountpoint{ /boot } .

20480 20480 -1 ext4
    method{ format }
    format{ }
    use_filesystem{ }
    filesystem{ ext4 }
    mountpoint{ / } .

64 512 300% linux-swap
    method{ swap }
    format{ } .
