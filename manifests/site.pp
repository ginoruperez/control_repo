node default {
  file {'/root/README':
    ensure => file,
  }
  file {'/root/README2':
    ensure => file,
  }
  
}
