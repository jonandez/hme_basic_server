# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include hme_masterless_basic_server::firewalld
class hme_masterless_basic_server::firewalld {

  include firewalld
# Drop all traffic and allow pors 8080, 443, 22

  firewalld_port { 'Open port 8080 in the public zone':
    ensure   => present,
    zone     => 'public',
    port     => 8080,
    protocol => 'tcp',
  }

  firewalld_port { 'Open port 443 in the public zone':
    ensure   => present,
    zone     => 'public',
    port     => 443,
    protocol => 'tcp',
  }

  firewalld_port { 'Open port 22 in the public zone':
    ensure   => present,
    zone     => 'public',
    port     => 22,
    protocol => 'tcp',
  }

  # firewall { '999 drop all':
  #   proto  => 'all',
  #   action => 'drop',
  #   before => undef,
  # }
}
