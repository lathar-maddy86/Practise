class apache::params{

#specify a server name  for our virtual host

if($::fqdn){
	$servername =$::fqdn
}else 	   {
	$servername = $::hostname
}
	$document_root = "/var/www/website"
	$log_root      = "/var/log/apache"

case $::osfamily {
	'redhat':{
	$package_name = "httpd"
	$service_name = "httpd"
	$conf_dir     = "/etc/httpd/conf"
	$vhost_dir    = "/etc/httpd/conf.d"	
	
	}
	'debain':{
	 $package_name = "apache2"
        $service_name  = "apache2"
        $conf_dir      = "/etc/apache2"
        $vhost_dir     = "/etc/apache2/sites-enabled"


	}
}

}
