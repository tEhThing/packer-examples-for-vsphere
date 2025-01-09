# © Broadcom. All Rights Reserved.
# The term “Broadcom” refers to Broadcom Inc. and/or its subsidiaries.
# SPDX-License-Identifier: BSD-2-Clause

/*
    DESCRIPTION:
    Network variables used for all builds.
    - Variables are passed to and used by guest operating system configuration files (e.g., ks.cfg).

*/

// VM Network Settings (default DHCP)
vm_ip_address = "192.168.154.10"
vm_ip_netmask = 24
vm_ip_gateway = "192.168.154.1"
vm_dns_list   = [ "8.8.8.8", "8.8.4.4" ]
