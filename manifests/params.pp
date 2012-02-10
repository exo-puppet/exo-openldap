# Class: openldap::params
#
# This class manage the openldap parameters for different OS
class openldap::params {
	
	$ensure_mode = $openldap::lastversion ? {
		true => latest,
		default => present
	}
	info ("openldap ensure mode = $ensure_mode")
	

	case $::operatingsystem {
		/(Ubuntu|Debian)/: {
            $package_name       = ["slapd","ldap-utils"]
            $service_name       = "slapd"
            $configuration_dir  = "/etc/ldap"
		}
		default: {
			fail ("The ${module_name} module is not supported on $::operatingsystem")
		}
	}
}
