# DEFINING AN HIERA IN THIS PARAMS
# FOR PREVIOUS PARAMS SEE PARAMS.PP.BCK
class ntp::params {
  $package_name = hiera('ntp::package_name')
  $package_ensure = hiera('ntp::package_ensure')
  $config_name = hiera('ntp::config_name'
  $config_file_mode = hiera('ntp::config_file_mode')
  $servers = hiera('ntp::servers')
  $service_ensure = hiera('ntp::service_ensure')
  $service_hasrestart = hiera('ntp::service_hasrestart')
  $service_enable = hiera('ntp::service_enable')
  $service_hasstatus = hiera('ntp::service_hasstatus')

# Definition of the selector variable
  $ntpservice = $osfamily ? { 
    "redhat"  => "ntpd",
    "debian"  => "ntp",
    "default" => "ntp",
  } 
}
