# == Class apache::install
#
# This class is called from apache for install.
#
class apache::install {

  package { 'apache':
    ensure => present,
    name   => $::apache::package_name,
  }
}
