class localusers{
	user {'admin':
	ensure     => present,
	shell      => '/bin/bash',
	home       => '/home/admin',
 	gid        => 'wheel', 
	managehome => true,
	}
	
	user {'jeff':
	ensure     => present,
	shell      => '/bin/bash',
	home       => '/home/maddy',
	managehome => true,
	groups     => ['wheel','finance'],
	}
}
