# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include hme_masterless_basic_server::requirements
class hme_masterless_basic_server::requirements {
    exec { 'puppet module install puppet-firewalld --version 4.4.0':
    path   => '/usr/bin:/usr/sbin:/bin',
  }
}
