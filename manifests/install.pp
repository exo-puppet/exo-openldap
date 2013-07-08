# Class: openldap::install
#
# This class manage the installation of the openldap package
class openldap::install {
  package { 'openldap':
    ensure  => $openldap::params::ensure_mode,
    name    => $openldap::params::package_name,
    require => [
      Exec['repo-update'],],
  }
}
