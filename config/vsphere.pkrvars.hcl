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
vsphere_network                        = "IQX-Cloud-Automation-192.168.154.0/-de14d79d-b889-49b5-acdd-4dedc841b4df"
vsphere_folder                         = "Templates"
//vsphere_resource_pool                = "sfo-w01-rp01"
vsphere_set_host_for_datastore_uploads = false
