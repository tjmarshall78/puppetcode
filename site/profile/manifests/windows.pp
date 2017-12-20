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
registry_key { 'HKLM\Software\QT':
  ensure => present,
}
registry_value { 'HKLM\Software\QT\datacenter':
  ensure => present,
  type   => string,
  data   => "Tulsa",
}

 class { 'domain_membership':
  domain       => 'qt.qtlab.com',
  username     => 'ansible_win',
  password     => '40WuchBB2!',
  join_options => '3',
}
 
}