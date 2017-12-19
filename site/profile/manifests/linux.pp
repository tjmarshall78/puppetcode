class profile::linux {

 file { '/etc/motd':
  ensure => present,
  owner => root,
  group => root,
  mode => '0644',
  content => "testing linux file.\n",
  }

}