node 'slave1.puppet' {
  package {
    'apache2':
        name => httpd,
        ensure => installed,
  }

  service {
    'apache2':
        ensure => true,
        enable => true,
        require => Package['apache2'],
  }
}
