# profile_allow_ssh_from_bastion

![pdk-validate](https://github.com/ncsa/puppet-profile_allow_ssh_from_bastion/workflows/pdk-validate/badge.svg)
![yamllint](https://github.com/ncsa/puppet-profile_allow_ssh_from_bastion/workflows/yamllint/badge.svg)

NCSA Common Puppet Profiles - allow ssh login from bastion nodes
 
## Dependencies
- [ncsa/puppet-sshd](https://github.com/ncsa/puppet-sshd)
 
## Reference
 
### class profile_allow_ssh_from_bastion (
-  Array[ String, 1 ] $bastion_nodelist,
-  Hash               $custom_cfg,
-  Array[ String ]    $groups,
-  Array[ String ]    $users,

See also: [REFERENCE.md](REFERENCE.md)
