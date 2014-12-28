# == Class: avahi::params
#
class avahi::params {

  $avahi_conf_template   = 'avahi/avahi-daemon.conf.erb'
  $avahi_conf_file       = '/etc/avahi/avahi-daemon.conf'

  $avahi_hostname        = $::hostname
  $avahi_domain          = 'local'
  $avahi_useipv4         = 'yes'
  $avahi_useipv6         = 'no'

  $avahi_service_enable  = true
  $avahi_service_ensure  = 'running'

}
