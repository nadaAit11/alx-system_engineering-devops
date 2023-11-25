# Using Puppet, install flask from pip3.

# Install pip3 package
package { 'python3-pip':
  ensure => present,
}

# Use pip3 to install Flask version 2.1.0
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip',
  require  => Package['python3-pip'],
}
