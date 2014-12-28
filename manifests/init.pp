# == Class: avahi
#
class avahi (

  $avahi_hostname = $avahi::params::avahi_hostname,
  $avahi_domain   = $avahi::params::avahi_domain,
  $avahi_useipv4  = $avahi::params::avahi_usepiv4,
  $avahi_useipv6  = $avahi::params::avahi_useipv6,

) inherits avahi::params {

  include stdlib

  class { 'avahi::install': }
  class { 'avahi::service': }

  class { 'avahi::config':
    avahi_hostname => $avahi_hostname,
    avahi_domain   => $avahi_domain,
    avahi_useipv4  => $avahi_useipv4,
    avahi_useipv6  => $avahi_useipv6,
    require        => Class['avahi::install'],
    notify         => Class['avahi::service'],
  }
}
