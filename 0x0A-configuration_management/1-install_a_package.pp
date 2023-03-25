# install puppet-lint -v 2.5.0

class flask_installation {
  package { 'python3-pip':
    ensure => installed,
  }

  exec { 'install_flask':
    command => '/usr/bin/pip3 install Flask==2.1.0',
    creates => '/usr/local/lib/python3.8/dist-packages/flask/__init__.py',
  }
}

include flask_installation
