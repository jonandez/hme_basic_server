# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include hme_masterless_basic_server::requirements
class hme_masterless_basic_server::requirements {
  # $modules = ['puppetlabs-stdlib --version 7.0.0 --force', 'saz-sudo --version 7.0.2', 'puppet-firewalld --version 4.4.0']

  # $modules.each |String $module| {
  #   exec { "puppet module install ${module}":
  #     path    => '/opt/puppetlabs/puppet/bin/',
  #   }
  # }

  # exec { 'puppet module install puppetlabs-stdlib --version 7.0.0 --force':
  #   path    => '/opt/puppetlabs/puppet/bin/',
  # }
}
