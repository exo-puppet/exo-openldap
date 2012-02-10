# Class: openldap::config
#
# This class manage the openldap configuration
class openldap::config {
    file { $openldap::params::configuration_dir:
        ensure  => directory,
        owner   => root,
        group   => root,
        mode    => 0755,
        require => Class["openldap::install"],
        notify => Class["openldap::service"],
    }
}
