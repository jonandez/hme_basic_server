# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include hme_masterless_basic_server::cron
class hme_masterless_basic_server::cron {

    cron { 'puppet-apply':
    ensure  => present,
    command => '/opt/puppetlabs/puppet/bin/puppet apply /etc/puppetlabs/code/environments/production/manifests/site.pp',
    user    => 'root',
    minute  => '*/2',
    # require => File['post-hook'],
  }

}
