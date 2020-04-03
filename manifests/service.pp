# CREATING A CLASS DEFINITION REQUIRED MODULE NAME::CLASS NAME
#class ntp::service {
#  $ntpservice = osfamily ? {
#   "redhat"  => "ntpd",
#   "debian"  => "ntp",
#   "default" => "ntp",
#  }
#  
#  service { $ntpservice:
#   ensure => "running",
#   enable => "true",
#  }
#}

# UPDATING THE SERVICE.PP TO CONSIDER CLASS VARIABLE
class ntp::service (
   String $service_ensure = $ntp::params::service_ensure,
   String $service_name = $ntp::params::service_name,
   Boolean $service_enable = $ntp::params::service_enable,
   Boolean $service_hasrestart = $ntp::params::service_hasrestart,
   Boolean $service_hasstatus = $ntp::params::service_hasstatus,
){
   service { $service_name:
      ensure => $service_ensure,
      enable => $service_enable,
      hasstatus => $service_hasstatus,
      hasstart => $service_hasstart,
   }
}
