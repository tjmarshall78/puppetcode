class profile::example {
$iis_features = ['Web-WebServer','Web-Scripting-Tools','Web-Asp-Net45']

iis_feature { $iis_features:
  ensure => 'present',
} ->

iis_site { 'minimal':
  ensure          => 'started',
  physicalpath    => 'c:\\inetpub\\minimal',
  applicationpool => 'DefaultAppPool',
  bindings => [
   {   
      'bindinginformation' => '*:8081:',
      'protocol' => 'http',
   },
  ],
  require         => File['minimal'],
}

file { 'minimal':
  ensure => 'directory',
  path   => 'c:\\inetpub\\minimal',

}

iis_site { 'maximum':
  ensure          => 'started',
  physicalpath    => 'c:\\inetpub\\maximum',
  applicationpool => 'DefaultAppPool',
  bindings => [
   {   
      'bindinginformation' => '*:8082:',
      'protocol' => 'http',
   },
  ],
  require         => File['maximum'],
}

file { 'maximum':
  ensure => 'directory',
  path   => 'c:\\inetpub\\maximum',

}

}
