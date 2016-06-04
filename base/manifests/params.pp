class base::params{
	case $::osfamily {
	'Redhat': {$ssh_name = 'sshd'}
	'Debain': {$ssh_name = 'ssh'}
	Default:  {fail('OS is not supported by module SSH')}
	}

#	$ssh_name = $osfamily ? {
#		'Redhat' => 'sshd',
#		'Debain' => 'ssh',
#		default  => 'value',
#	}

}
