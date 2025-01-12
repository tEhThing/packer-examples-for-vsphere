/*
    DESCRIPTION:
    Simplified storage variables for a single-user Debian system.
*/

// VM Storage Settings
vm_disk_device   = "sda"
vm_disk_use_swap = true

// Define partitions
vm_disk_partitions = [
  {
    name = "efi"
    size = 512,
    format = {
      label  = "EFIFS",
      fstype = "fat32",
    },
    mount = {
      path    = "/boot/efi",
      options = "",
    },
    volume_group = "",  // No LVM here
  },
  {
    name = "root"
    size = -1,
    format = {
      label  = "ROOTFS",
      fstype = "ext4",
    },
    mount = {
      path    = "/",
      options = "",
    },
    volume_group = "",  // This is a regular partition, not LVM
  },
  {
    name = "lvm_partition"  // Added a partition for LVM
    size = -1,  // Use remaining space or set specific size
    format = {
      label  = "LVM_PV",  // Label for physical volume
      fstype = "LVM",  // Label LVM partition
    },
    mount = {
      path    = "",
      options = "",
    },
    volume_group = "sysvg",  // Link this partition to LVM group
  }
]

// Define LVM Volume Group and Logical Volumes
vm_disk_lvm = [
  {
    name : "sysvg",
    partitions : [
      {
        name = "lv_swap",
        size = 2048,
        format = {
          label  = "SWAPFS",
          fstype = "swap",
        },
        mount = {
          path    = "",
          options = "",
        },
      },
      {
        name = "lv_root",
        size = -1,  // Use the rest of the space for root
        format = {
          label  = "ROOTFS",
          fstype = "ext4",
        },
        mount = {
          path    = "/",
          options = "",
        },
      }
    ],
  }
]
