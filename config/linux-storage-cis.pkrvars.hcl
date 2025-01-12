// VM Storage Settings
vm_disk_device   = "sda"
vm_disk_use_swap = true

// Define partitions
vm_disk_partitions = [
  {
    name = "efi"
    size = 1024  // 1 GB for the EFI partition
    format = {
      label  = "EFIFS"
      fstype = "fat32"  // EFI partition must be formatted as FAT32
    }
    mount = {
      path    = "/boot/efi"  // Mount the EFI partition at /boot/efi
      options = ""
    }
    volume_group = ""  // No LVM here
  },
  {
    name = "boot"
    size = 1024  // 1 GB for the boot partition
    format = {
      label  = "BOOTFS"
      fstype = "ext4"  // Boot partition should be ext4
    }
    mount = {
      path    = "/boot"  // Mount the boot partition at /boot
      options = ""
    }
    volume_group = ""  // No LVM here
  },
  {
    name = "lvm_partition"  // Partition for LVM setup
    size = -1  // Use remaining space after EFI and boot partitions
    format = {
      label  = "LVM_PV"  // Label the partition as a physical volume for LVM
      fstype = "LVM"  // LVM partition
    }
    mount = {
      path    = ""
      options = ""
    }
    volume_group = "sysvg"  // Link to the LVM volume group
  }
]

// Define LVM Volume Group and Logical Volumes
vm_disk_lvm = [
  {
    name : "sysvg"
    partitions : [
      {
        name = "lv_swap"
        size = 2048  // Size for swap (2GB)
        format = {
          label  = "SWAPFS"
          fstype = "swap"
        }
        mount = {
          path    = ""
          options = ""
        }
      },
      {
        name = "lv_root"
        size = 8192  // 8 GB for root
        format = {
          label  = "ROOTFS"
          fstype = "ext4"  // Root filesystem formatted as ext4
        }
        mount = {
          path    = "/"
          options = ""
        }
      },
      {
        name = "lv_var"
        size = 4096  // 4 GB for /var
        format = {
          label  = "VARFS"
          fstype = "ext4"  // /var filesystem formatted as ext4
        }
        mount = {
          path    = "/var"
          options = ""
        }
      },
      {
        name = "lv_tmp"
        size = 2048  // 2 GB for /tmp
        format = {
          label  = "TMPFS"
          fstype = "ext4"  // /tmp filesystem formatted as ext4
        }
        mount = {
          path    = "/tmp"
          options = ""
        }
      },
      {
        name = "lv_home"
        size = 8192  // 8 GB for /home
        format = {
          label  = "HOMEFS"
          fstype = "ext4"  // /home filesystem formatted as ext4
        }
        mount = {
          path    = "/home"
          options = ""
        }
      }
    ]
  }
]
