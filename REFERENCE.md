# Reference
<!-- DO NOT EDIT: This document was generated by Puppet Strings -->

## Table of Contents

**Classes**

* [`profile_allow_ssh_from_bastion`](#profile_allow_ssh_from_bastion): Allow incoming ssh from any bastion nodes

## Classes

### profile_allow_ssh_from_bastion

Allow incoming ssh from any cererus nodes

#### Examples

##### 

```puppet
include profile_allow_ssh_from_bastion
```

#### Parameters

The following parameters are available in the `profile_allow_ssh_from_bastion` class.

##### `bastion_nodelist`

Data type: `Array[ String, 1 ]`

List of bastion hostnames / IPs / CIDRs

Note: must contain at least 1 item

##### `custom_cfg`

Data type: `Hash`

Additional sshd_conf params (suitable for sshd_config match block)

##### `groups`

Data type: `Array[ String ]`

One or more LDAP / UNIX groups that are allowed to login from
any of the nodes in bastion_nodelist.

##### `uses`

One or more LDAP / UNIX users that are allowed to login from
any of the nodes in bastion_nodelist.

Note: One of `groups` or `users` must be set.

##### `users`

Data type: `Array[ String ]`



