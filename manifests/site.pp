node 'slave1.puppet' {
  package {
    'httpd':
        name => httpd,
        ensure => installed,
  }

  service {
    'httpd':
        ensure => true,
        enable => true,
        require => Package['httpd'],
  }
}
