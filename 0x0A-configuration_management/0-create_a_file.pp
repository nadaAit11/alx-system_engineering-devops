# Using Puppet, create a file in /tmp.

file { 'school':
  ensure  => 'file',
  content => 'I love Puppet',
  group   => 'www-data',
  mode    => '0744',
  owner   => 'www-data',
  path    => '/tmp/school',
}
