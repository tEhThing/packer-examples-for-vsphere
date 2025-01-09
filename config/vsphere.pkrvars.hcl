# © Broadcom. All Rights Reserved.
# The term “Broadcom” refers to Broadcom Inc. and/or its subsidiaries.
# SPDX-License-Identifier: BSD-2-Clause

/*
    DESCRIPTION:
    VMware vSphere variables used for all builds.
    - Variables are use by the source blocks.
*/

// vSphere Credentials
vsphere_endpoint            = "poxcs-vcsa-01.plusonex.com"
vsphere_username            = "svc-packer@vsphere.local"
vsphere_password            = "Q=LCEIuHhn=WTUUn5Hcx"
vsphere_insecure_connection = true

// vSphere Settings
vsphere_datacenter                     = "JB1-DATACENTER"
vsphere_cluster                        = "JB1-DC04-Cluster-01"
//vsphere_host                         = "sfo-w01-esx01"
vsphere_datastore                      = "PURE-C-PLAT-01"
vsphere_network                        = "IQX-Cloud-Prod-Backend-192.168.153.0/-f0844da0-5ee6-4576-b57c-ac8eb5f226b2"
vsphere_folder                         = "Templates"
//vsphere_resource_pool                = "sfo-w01-rp01"
vsphere_set_host_for_datastore_uploads = false
