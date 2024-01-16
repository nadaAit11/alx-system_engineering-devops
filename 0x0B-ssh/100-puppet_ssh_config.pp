# 100-puppet_ssh_config.pp

# Ensure the private key is set to ~/.ssh/school
file_line { 'Declare identity file':
  path => '/etc/ssh/ssh_config',
  line => '  IdentityFile ~/.ssh/school',
  match => '^  IdentityFile',
}

# Ensure password authentication is turned off
file_line { 'Turn off passwd auth':
  path => '/etc/ssh/ssh_config',
  line => '  PasswordAuthentication no',
  match => '^  PasswordAuthentication',
}
