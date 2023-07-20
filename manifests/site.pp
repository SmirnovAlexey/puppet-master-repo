node 'slave1.puppet' {
  package {
    'httpd':
        name => httpd,
        ensure => installed,
  }
-> file { 'static.html':
          ensure => present,
          source => "\vagrant\slave\static.html",
          target => "\var\www\html\index.html",
 }
-> service {
    'httpd':
        ensure => true,
        enable => true,
  }
}
