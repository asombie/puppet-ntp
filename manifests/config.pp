class ntp::config (
   String $config_name = $ntp::params::config_name,
   String $config_file_mode = $ntp::params:conf_file_name,
   Array[String] $servers = $ntp::params::servers,
){
  file {"/etc/$(config_name)":
    ensure => file,
    group => 0,
    owner => 0,
    mode => $config_file_mode,
    content => template("$module_name/ntp.conf.erb"),
  }
}
