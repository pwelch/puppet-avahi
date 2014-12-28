# == Class: avahi::config
#
class avahi::config (

  $avahi_conf_file     = $avahi::params::avahi_conf_file,
  $avahi_conf_template = $avahi::params::avahi_conf_template,

  $avahi_hostname      = $avahi::params::avahi_hostname,
  $avahi_domain        = $avahi::params::avahi_domain,
  $avahi_useipv4       = $avahi::params::avahi_usepiv4,
  $avahi_useipv6       = $avahi::params::avahi_useipv6,

) inherits avahi::params {

  file { $avahi_conf_file:
    ensure  => file,
    content => template($avahi_conf_template),
  }

}
