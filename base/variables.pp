class base::variables{
	$localvar = "local var"
	notify {"${topscope} is your top scope vaiable":}
	notify {"${nodescope} is your node scope variable":}
	notify {"${localvar} is your local var variable":}
	notify { "$(::operatingsystem) is your operating system":}


}
