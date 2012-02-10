# Class: openldap::service
#
# This class manage the openldap service
class openldap::service {
	service { "openldap":
		ensure     => running,
		name       => $openldap::params::service_name,
		hasstatus  => true,
		hasrestart => true,
		require => Class["openldap::config"],
	}
}
