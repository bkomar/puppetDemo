node 'demo' {
  include nginx

  package { 'puppet':
    ensure => latest,
  } 
}
