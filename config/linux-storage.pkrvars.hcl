// Simple VM Storage Settings
vm_disk_device   = "sda"
vm_disk_use_swap = true
vm_disk_partitions = [
  {
    name = "efi",
    size = 512,
    format = {
      label  = "EFIFS",
      fstype = "fat32",
    },
    mount = {
      path    = "/boot/efi",
      options = "",
    },
    volume_group = "",
  },
  {
    name = "boot",
    size = 1024,
    format = {
      label  = "BOOTFS",
      fstype = "ext4",
    },
    mount = {
      path    = "/boot",
      options = "",
    },
    volume_group = "",
  },
  {
    name = "root",
    size = 20480,
    format = {
      label  = "ROOTFS",
      fstype = "ext4",
    },
    mount = {
      path    = "/",
      options = "",
    },
    volume_group = "",
  },
]
vm_disk_lvm = []
