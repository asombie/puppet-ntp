#class ntp::install {
#  package { "ntp":
#    ensure => "installed",
#  }
#}

# UPDATE THE INSTALL.PP FILE TO MATCH WITH THE NEW CLASS VARIABLE
class ntp::install (
  String $package_name = $ntp::params::package_name,
  String $package_ensure = $ntp::params::package_ensure,
)
{
  package { $package_name:
    ensure => $package_ensure,
  }
}
