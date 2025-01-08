# © Broadcom. All Rights Reserved.
# The term “Broadcom” refers to Broadcom Inc. and/or its subsidiaries.
# SPDX-License-Identifier: BSD-2-Clause

/*
    DESCRIPTION:
    VMware vSphere variables used for all builds.
    - Variables are use by the source blocks.
*/

// vSphere Credentials
vsphere_endpoint            = "poxcs-vc-ct-01.plusonex.com"
vsphere_username            = "svc-packer@vsphere.com"
vsphere_password            = "Q=LCEIuHhn=WTUUn5Hcx"
vsphere_insecure_connection = true

// vSphere Settings
vsphere_datacenter                     = "CAPETOWN-DATACENTER"
vsphere_cluster                        = "CT2-CLUSTER-01"
//vsphere_host                         = "sfo-w01-esx01"
vsphere_datastore                      = "CT2-Migration-Vol-01"
vsphere_network                        = "Managment-10.3.9.x-VLAN870"
vsphere_folder                         = "Templates"
//vsphere_resource_pool                = "sfo-w01-rp01"
vsphere_set_host_for_datastore_uploads = false
