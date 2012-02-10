# Class: openldap::install
#
# This class manage the installation of the openldap package
class openldap::install {
    package { "openldap" :
        name    => $openldap::params::package_name,
        ensure  => $openldap::params::ensure_mode,
        require => [ Exec ["repo-update"],],
    }
}