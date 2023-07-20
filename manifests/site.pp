node 'slave1.puppet' {
  package {
    'httpd':
        name => httpd,
        ensure => installed,
  }
-> file { '\vagrant\slave\static.html':
          ensure => present,
          source => "\var\www\html\index.html",
 }
-> service {
    'httpd':
        ensure => true,
        enable => true,
  }
}
