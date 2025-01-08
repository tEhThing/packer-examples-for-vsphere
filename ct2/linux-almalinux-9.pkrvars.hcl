# © Broadcom. All Rights Reserved.
# The term “Broadcom” refers to Broadcom Inc. and/or its subsidiaries.
# SPDX-License-Identifier: BSD-2-Clause

/*
    DESCRIPTION:
    AlmaLinux OS 9 variables used by the Packer Plugin for VMware vSphere (vsphere-iso).
*/

// Guest Operating System Metadata
vm_guest_os_name    = "almalinux"
vm_guest_os_version = "9.5"

// Virtual Machine Guest Operating System Setting
vm_guest_os_type = "other5xLinux64Guest"

// Virtual Machine Hardware Settings
vm_firmware = "efi-secure"

// Removable Media Settings
iso_datastore_path       = "iso/linux/almalinux-os/9/amd64"
iso_content_library_item = "AlmaLinux-9.5-x86_64-dvd"
iso_file                 = "AlmaLinux-9.5-x86_64-dvd.iso"

