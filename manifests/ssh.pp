# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include hme_masterless_basic_server::ssh
class hme_masterless_basic_server::ssh {

  file_line { 'sshd':
    ensure => present,
    path   => '/etc/ssh/sshd_config',
    line   => 'PermitRootLogin no',
    match  => '^PermitRootLogin',
  }
}
