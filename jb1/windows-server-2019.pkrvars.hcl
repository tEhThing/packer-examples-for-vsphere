# © Broadcom. All Rights Reserved.
# The term “Broadcom” refers to Broadcom Inc. and/or its subsidiaries.
# SPDX-License-Identifier: BSD-2-Clause

/*
    DESCRIPTION:
    Microsoft Windows Server 2019 build variables.
    Packer Plugin for VMware vSphere: 'vsphere-iso' builder.
*/

// Installation Operating System Metadata
vm_inst_os_key_standard             = "XXXXX-XXXXX-XXXXX-XXXXX-XXXXX"
vm_inst_os_key_datacenter           = "XXXXX-XXXXX-XXXXX-XXXXX-XXXXX"

// Virtual Machine Guest Operating System Setting
vm_guest_os_type = "windows2019srv_64Guest"

// Virtual Machine Hardware Settings
vm_firmware              = "efi-secure"

// Removable Media Settings
iso_datastore_path       = "iso/windows/windows-server/2019/amd64"
iso_content_library_item = "17763.3650.221105-1748.rs5_release_svc_refresh_SERVER_EVAL_x64FRE_en-us"
iso_file                 = "17763.3650.221105-1748.rs5_release_svc_refresh_SERVER_EVAL_x64FRE_en-us.iso"
