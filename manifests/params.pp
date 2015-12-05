# == Class apache::params
#
# This class is meant to be called from apache.
# It sets variables according to platform.
#
class apache::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'apache'
      $service_name = 'apache'
    }
    'RedHat', 'Amazon': {
      $package_name = 'apache'
      $service_name = 'apache'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
