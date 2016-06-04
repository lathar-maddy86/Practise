class base::ssh{
#	case $osfamily {
#	'redhat': {$ssh_name = 'sshd'}
#	'debain': {$ssh_name = 'ssh'}
#	default:  {fail ('This OS is not supported by puppet')}
#	}
#	$ssh_name = $osfamily ?{
#	'redhat' => 'sshd',
#	'debian' => 'ssh',
#	}

	package {'openssh-package':
	name => 'openssh',
	ensure => present,
	}

	file {'/etc/ssh/sshd_config':
	ensure => file,
	owner => root,
	group => root,
	require => Package['openssh-package'],
	source => 'puppet:///modules/base/sshd_config',
	}

	service {'service-name':
	name => $base::params::ssh_name,
	ensure =>running,
	enable => true,
	subscribe => File['/etc/ssh/sshd_config'],
	}
	
}
