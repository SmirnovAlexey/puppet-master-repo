node 'slave1.puppet' {
  package {
    'httpd':
        name => httpd,
        ensure => installed,
  }
-> file { 'static.html':
          ensure => file,
          path   => "/var/www/html/index.html",
          source => "/vagrant/slave/static.html"
 }
-> service {
    'httpd':
        ensure => true,
        enable => true,
  }
}
