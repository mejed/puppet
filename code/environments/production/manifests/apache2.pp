#Definition of a class
class apache2{

#Installing apache2 Package
package { "apache2":
    ensure  => "present"
}

$ip=$server_facts['$serverip']
#Configuring apache2 index file
file { "/var/www/html/index.html":
    ensure  => "present",
    content => "The new ip is $ipaddress"
    }

#Starting apache2 services
service { "apache2":
    ensure => "running"
}

}
