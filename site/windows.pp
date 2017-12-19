class {windows

 file { 'c:\windows\temp\puppet.txt':
   ensure => file,
   content => "Testing a windows file.\n",
   }

}