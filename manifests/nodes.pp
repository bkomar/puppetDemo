node 'demo' {
  
  include ssh
  include sudoers
  include nginx
 
 
  user { 'art':
    ensure  => present,
    comment => 'Art U',
    home    => '/home/art',
    managehome => true
  }

  ssh_authorized_key { 'art_ssh':
    user => 'art',
    type => 'rsa',
    key => '',
  }

  

  package { 'puppet':
    ensure => latest,
  } 
}
