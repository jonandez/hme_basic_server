# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include hme_masterless_basic_server::sudo
class hme_masterless_basic_server::sudo {

  exec { 'puppet module install puppetlabs-stdlib --version 7.0.0 --force':
    path    => '/opt/puppetlabs/puppet/bin/',
  }

  exec { 'puppet module install saz-sudo --version 7.0.2':
    path    => '/opt/puppetlabs/puppet/bin/',
  }

  sudo::conf { 'hme':
    priority => 60,
    content  => 'hme ALL=(ALL) NOPASSWD: ALL',
  }

  sudo::conf { 'vagrant':
    priority => 60,
    content  => 'vagrant ALL=(ALL) NOPASSWD: ALL',
  }
}
