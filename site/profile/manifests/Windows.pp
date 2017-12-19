class profile::Windows {

  #the base profile should include component modules that will be on all nodes

  user { 'hgilmore':
      ensure => present,
  }
 file { 'c:\windows\temp\puppet.txt:
   ensure => file,
   content => "Testing a windows file.\n",
   }

}
