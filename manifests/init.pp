# @summary Allow incoming ssh from any bastion nodes
#
# Allow incoming ssh from any cererus nodes
#
# @param bastion_nodelist
#   List of bastion hostnames / IPs / CIDRs
#
#   Note: must contain at least 1 item
#
# @param custom_cfg
#   Additional sshd_conf params (suitable for sshd_config match block)
#
# @param groups
#   One or more LDAP / UNIX groups that are allowed to login from
#   any of the nodes in bastion_nodelist.
#
# @param users
#   One or more LDAP / UNIX users that are allowed to login from
#   any of the nodes in bastion_nodelist.
#
#   Note: One of `groups` or `users` must be set.
#
# @example
#   include profile_allow_ssh_from_bastion
class profile_allow_ssh_from_bastion (
  Array[String, 1] $bastion_nodelist,
  Hash               $custom_cfg,
  Array[String]    $groups,
  Array[String]    $users,
) {
  ::sshd::allow_from { 'sshd allow from bastion nodes':
    hostlist                => $bastion_nodelist,
    users                   => $users,
    groups                  => $groups,
    additional_match_params => $custom_cfg,
  }
}
