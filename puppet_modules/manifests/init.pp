class buildout {

    package { ['python-virtualenv',
               'python-dev',
               'libjpeg62-dev',
               'libxslt1-dev',
               'git-core',
               'subversion',
               'wget',
               'elinks',]:
        ensure => installed,
    }

    group { "puppet":
        ensure => "present",
    }

    file { '/etc/ssh/ssh_known_hosts':
        content => template('buildout/known_hosts'),
        owner => 'root',
        group => 'root',
        mode => '644',
    }

    file { '/home/vagrant/.buildout/default.cfg':
        content => template('buildout/default.cfg'),
        owner => 'vagrant',
        group => 'vagrant',
        mode => '644',
    }
}
