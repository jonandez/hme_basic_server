# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include hme_masterless_basic_server::user
class hme_masterless_basic_server::user {

  user { 'hme user':
      name       => 'hme',
      ensure     => present,
      managehome => yes,
  }
}
