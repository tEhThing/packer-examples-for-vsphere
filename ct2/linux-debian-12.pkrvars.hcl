# © Broadcom. All Rights Reserved.
# The term “Broadcom” refers to Broadcom Inc. and/or its subsidiaries.
# SPDX-License-Identifier: BSD-2-Clause

/*
    DESCRIPTION:
    Debian 12 build variables.
*/

// Guest Operating System Metadata
vm_guest_os_name     = "debian"
vm_guest_os_version  = "12.8"

// Virtual Machine Guest Operating System Setting
vm_guest_os_type = "other5xLinux64Guest"

// Virtual Machine Hardware Settings
vm_firmware = "efi-secure"

// Removable Media Settings
iso_datastore_path       = "iso/linux/debian/12/amd64"
iso_content_library_item = "debian-12.8.0-amd64-netinst"
iso_file                 = "debian-12.8.0-amd64-netinst.iso"

