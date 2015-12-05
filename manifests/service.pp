# == Class apache::service
#
# This class is meant to be called from apache.
# It ensure the service is running.
#
class apache::service {

  service { 'apache':
    ensure     => running,
    name       => $::apache::service_name,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
