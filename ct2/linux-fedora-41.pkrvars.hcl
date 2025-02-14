# © Broadcom. All Rights Reserved.
# The term “Broadcom” refers to Broadcom Inc. and/or its subsidiaries.
# SPDX-License-Identifier: BSD-2-Clause

/*
    DESCRIPTION:
    Fedora Server 41 build variables.
    Packer Plugin for VMware vSphere: 'vsphere-iso' builder.
*/

// Guest Operating System Metadata
vm_guest_os_name    = "fedora"
vm_guest_os_version = "41"

// Virtual Machine Guest Operating System Setting
vm_guest_os_type      = "fedora64Guest"
vm_guest_os_cloudinit = true

// Virtual Machine Hardware Settings
vm_firmware = "efi-secure"

// Removable Media Settings
iso_datastore_path       = "iso/linux/fedora-server/41/amd64"
iso_content_library_item = "Fedora-Server-dvd-x86_64-41-1.4"
iso_file                 = "Fedora-Server-dvd-x86_64-41-1.4.iso"
