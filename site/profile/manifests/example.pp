class profile::example {
$iis_features = ['Web-WebServer','Web-Scripting-Tools', 'IIS-WindowsAuthentication']

iis_feature { $iis_features:
  ensure => 'present',
} ->

iis_site { 'minimal':
  ensure          => 'started',
  physicalpath    => 'c:\\inetpub\\minimal',
  applicationpool => 'DefaultAppPool',
  bindings => [
   {   
      'bindinginformation' => '*:8080:',
      'protocol' => 'http',
   },
  ],
  require         => File['minimal'],
}

file { 'minimal':
  ensure => 'directory',
  path   => 'c:\\inetpub\\minimal',

}

}
