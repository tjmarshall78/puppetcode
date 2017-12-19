class profile::base {

  #the base profile should include component modules that will be on all nodes
  user { 'hgilmore':
      ensure => present,
  }
  
 file { 'c:\windows\temp\puppet.txt:
   ensure => file,
   content => "Testing a windows file.\n",
   }

  user { 'test':
      ensure => present,
  }

 file { '/etc/motd':
  ensure => present,
  owner => root,
  group => root,
  mode => '0644',
  content => "testing linux file.\n",
  }

}
