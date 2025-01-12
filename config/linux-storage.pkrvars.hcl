/*
    DESCRIPTION:
    Simplified storage variables for a single-user Debian system with LVM and EFI boot.
*/

// VM Storage Settings
vm_disk_device   = "sda"
vm_disk_use_swap = true

// Define partitions
vm_disk_partitions = [
  {
    name = "efi"
    size = 512,  // 512 MB for the EFI partition
    format = {
      label  = "EFIFS",
      fstype = "fat32",  // EFI partition must be formatted as FAT32
    },
    mount = {
      path    = "/boot/efi",  // Mount the EFI partition at /boot/efi
      options = "",
    },
    volume_group = "",  // No LVM here
  },
  {
    name = "lvm_partition"  // Partition for LVM setup
    size = -1,  // Use remaining space after EFI partition
    format = {
      label  = "LVM_PV",  // Label the partition as a physical volume for LVM
      fstype = "LVM",  // LVM partition
    },
    mount = {
      path    = "",
      options = "",
    },
    volume_group = "sysvg",  // Link to the LVM volume group
  }
]

// Define LVM Volume Group and Logical Volumes
vm_disk_lvm = [
  {
    name : "sysvg",
    partitions : [
      {
        name = "lv_swap",
        size = 2048,  // Size for swap
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
        size = -1,  // Use remaining space for root
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
