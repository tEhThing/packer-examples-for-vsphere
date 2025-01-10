# © Broadcom. All Rights Reserved.
# The term “Broadcom” refers to Broadcom Inc. and/or its subsidiaries.
# SPDX-License-Identifier: BSD-2-Clause

/*
    DESCRIPTION:
    Storage variables used for Linux builds.
    - Variables are passed to and used by guest operating system configuration files (e.g., ks.cfg).
*/

// VM Storage Settings
vm_disk_device   = "sda"
vm_disk_use_swap = true
vm_disk_partitions = [
  {
    name = "boot"
    size = 487,
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
    name = "lvm"
    size = 15500,
    format = {
      label  = "",
      fstype = "",
    },
    mount = {
      path    = "",
      options = "",
    },
    volume_group = "Debian-12-vg",
  },
]
vm_disk_lvm = [
  {
    name : "Debian-12-vg",
    partitions : [
      {
        name = "lv_root",
        size = 14600,
        format = {
          label  = "ROOTFS",
          fstype = "ext4",
        },
        mount = {
          path    = "/",
          options = "",
        },
      },
      {
        name = "lv_swap",
        size = 980,
        format = {
          label  = "SWAPFS",
          fstype = "swap",
        },
        mount = {
          path    = "",
          options = "",
        },
      },
    ],
  }
]
