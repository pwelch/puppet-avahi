# == Class: avahi::install
#
class avahi::install {

  package { 'avahi-daemon':
    ensure => installed,
  }

}
