# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include hme_masterless_basic_server::sudo
class hme_masterless_basic_server::sudo {

  include sudo

  sudo::conf { 'hme':
    priority => 60,
    content  => 'hme ALL=(ALL) NOPASSWD: ALL',
    # require  => Class['user::hme user'],
  }
}
