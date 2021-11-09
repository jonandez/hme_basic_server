# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include hme_masterless_basic_server::cron
class hme_masterless_basic_server::cron {

  file { '/etc/puppetlabs/puppet/cron.sh':
  # file { 'cron.sh':
    source => 'puppet:///modules/hme_masterless_basic_server/cron.sh',
    owner  => 'root',
    group  => 'root',
    ensure => file,
    # ensure => '/etc/puppetlabs/puppet/cron.sh',
    mode   => '0774',
  }


  cron { 'puppet-apply':
    ensure  => present,
    command => '/opt/puppetlabs/puppet/bin/puppet apply /etc/puppetlabs/code/environments/production/manifests/site.pp',
    user    => 'root',
    minute  => '*/2',
  }


  cron { 'puppet-apply-file':
    ensure  => present,
    command => '/bin/bash /etc/puppetlabs/puppet/cron.sh',
    user    => 'root',
    minute  => '*/1',
    require => File['/etc/puppetlabs/puppet/cron.sh']
  }

}
