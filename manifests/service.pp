# == Class: avahi::service
#
class avahi::service (

  $avahi_service_ensure  = $avahi::params::avahi_service_ensure,
  $avahi_service_enable  = $avahi::params::avahi_service_enable,

) inherits avahi::params {

  service { 'avahi-daemon':
    ensure => $avahi_service_ensure,
    enable => $avahi_service_enable,
  }

}
