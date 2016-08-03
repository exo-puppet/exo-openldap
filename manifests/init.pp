################################################################################
#
#   This module manages the openldap service.
#
#   Tested platforms:
#    - Ubuntu 11.10 Oneiric
#    - Ubuntu 11.04 Natty
#    - Ubuntu 10.04 Lucid
#
#
# == Parameters
#   [+lastversion+]
#       (OPTIONAL) (default: false)
#
#       this variable allow to chose if the package should always be updated to the last available version (true) or not (false)
#       (default: false)
#
# == Modules Dependencies
#
# [+repo+]
#   the +repo+ puppet module is needed to :
#
#   - refresh the repository before installing package (in openldap::install)
#
# == Examples
#
#   class { "openldap":
#       lastversion => true,
#   }
#
################################################################################
class openldap (
  $lastversion = false) {
  # parameters validation
  if ($lastversion != true) and ($lastversion != false) {
    fail('lastversion must be true or false')
  }

  include stdlib
  include openldap::params, openldap::install, openldap::config, openldap::service
}
