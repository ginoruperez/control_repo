class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCpskaBtWGnaOpDXabtZXfQ1r9NnyYJklEcnV18R+oBFODCaim/1c7/kdBuNJvpQ5hAJ+6U3VAoe6ILIPUZo0ugfSupwRB22Zq1q5gjgtYSZ0KwJk9+ihxM5R1YNO8KmMgEy/UiDxVkhsYJu1OmkUaTFZx8uvTl4kFobSRuUzA+ahBgudkWDECnQfs/HyJAbkJ/gHllGthpNNp6pG7oavIPYGDGHe3BPkKqXLELEiYnYqsDm74fk0NS9kKk98hVtCBq/Z1KIA9mTmyorbXlCqL3+LaPg4sh9YAW1yPv9Mh5kaWbowgSv9fNO73xgSEt+pPRqedCz6h77D1yjhxjgtn7',
  }  
}
