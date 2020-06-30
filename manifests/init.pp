# @summary Allow incoming ssh from any cerberus nodes
#
# Allow incoming ssh from any cererus nodes
#
# @param cerberus_nodelist
#   List of cerberus hostnames / IPs / CIDRs
#
#   Note: must contain at least 1 item
#
# @param custom_cfg
#   Additional sshd_conf params (suitable for sshd_config match block)
#
# @param groups
#   One or more LDAP / UNIX groups that are allowed to login from
#   any of the nodes in cerberus_nodelist.
#
# @param uses
#   One or more LDAP / UNIX users that are allowed to login from
#   any of the nodes in cerberus_nodelist.
#
#   Note: One of `groups` or `users` must be set.
#
# @example
#   include profile_allow_ssh_from_cerberus
class profile_allow_ssh_from_cerberus (
  Array[ String, 1 ] $cerberus_nodelist,
  Hash               $custom_cfg,
  Array[ String ]    $groups,
  Array[ String ]    $users,
) {

  $parms_local = {
    'PubkeyAuthentication'   => 'yes',
    'KerberosAuthentication' => 'yes',
    'GSSAPIAuthentication'   => 'yes',
  }
  $params = $parms_local + $custom_cfg

  ::sshd::allow_from{ 'sshd allow from cerberus nodes':
    hostlist                => $cerberus_nodelist,
    users                   => $users,
    groups                  => $groups,
    additional_match_params => $params,
  }
}
