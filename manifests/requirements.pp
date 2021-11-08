# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include hme_masterless_basic_server::requirements
class hme_masterless_basic_server::requirements {
  # $modules = ['saz-sudo --version 7.0.2', 'puppet-firewalld --version 4.4.0']

  # exec { "puppet module install ${modules}":
  #   command => 
  #   path    => '/opt/puppetlabs/puppet/bin/',
  # }
  module { 'saz/sudo ':
    ensure => '7.0.2',
  }
}
