# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include hme_masterless_basic_server::motd
class hme_masterless_basic_server::motd {

  class { 'motd':
    content => "*************************************\n
                *     Pay attention!                *\n
                *                                   *\n
                * This server is property of HME    *\n
                *   Any damage will require legal   *\n
                *    intervenction                  *\n
                *************************************\n",
  }
}
