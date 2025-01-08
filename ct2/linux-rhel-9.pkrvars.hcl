# © Broadcom. All Rights Reserved.
# The term “Broadcom” refers to Broadcom Inc. and/or its subsidiaries.
# SPDX-License-Identifier: BSD-2-Clause

/*
    DESCRIPTION:
    Red Hat Enterprise Linux 9 build variables.
    Packer Plugin for VMware vSphere: 'vsphere-iso' builder.
*/

// Guest Operating System Metadata
vm_guest_os_name    = "rhel"
vm_guest_os_version = "9.5"

// Virtual Machine Guest Operating System Setting
vm_guest_os_type = "rhel9_64Guest"

// Virtual Machine Hardware Settings
vm_firmware = "efi-secure"

// Removable Media Settings
iso_datastore_path       = "iso/linux/rhel/9/amd64"
iso_content_library_item = "rhel-9.5-x86_64-dvd"
iso_file                 = "rhel-9.5-x86_64-dvd.iso"
