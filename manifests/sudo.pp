# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include hme_masterless_basic_server::sudo
class hme_masterless_basic_server::sudo {

  require hme_masterless_basic_server::requirements
  include sudo

  sudo::conf { 'hme':
    priority => 60,
    content  => 'hme ALL=(ALL) NOPASSWD: ALL',
  }

  sudo::conf { 'vagrant':
    priority => 60,
    content  => 'vagrant ALL=(ALL) NOPASSWD: ALL',
  }
}
