#create a file to install a package

class flask_install {
  package { 'python3-pip':
    ensure => installed,
  }

  exec { 'install_flask':
    command     => '/usr/bin/pip3 install Flask==2.1.0',
    path        => ['/usr/bin', '/usr/local/bin'],
    creates     => '/usr/local/lib/python3.x/dist-packages/flask',  
    require     => Package['python3-pip'],
  }
}

include flask_install
