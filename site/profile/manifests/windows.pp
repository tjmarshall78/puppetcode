class profile::windows {

 file { 'c:\windows\temp\puppet.txt':
   ensure => file,
   content => "Testing a windows file.\n",
   }

registry_value { 'HKLM\System\CurrentControlSet\Services\Puppet\Description':
  ensure => present,
  type   => string,
  data   => "The Puppet Agent service periodically manages your configuration",
}
registry_value { 'HKLM\Software\QT':
  ensure => present,
}
registry_value { 'HKLM\Software\QT\datacenter':
  ensure => present,
  type   => string,
  data   => "Tulsa",
}
}