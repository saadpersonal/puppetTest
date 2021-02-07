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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDdy0lpANKXkJFUNvLXoGmDv6YgJcSyfPdZ7WdMP/wlDwNHiN5YsKR98gO68KdgiRELHtew8AE0Z03zlT8LNDKHph1ATPFPyR9oSrk53l9Pb3Q3fXvIENyc6OzZ6YzAewzWp3Mp6WXPAmws7jCX7oaRJv1EZImEtnFis9xzp1FUcvz7dMdmV8nsTXIoJWLrjDOsp/SfditqG7+PXnfwWr8GeV0eP9466o4o9EaLM9SBz98NIzz5Gj2VS3KrDZ9ucYol6GeS+73PfuWKnXACD5GoN6JWxH1CgYRfPqoJoLGkezE3EsQTm3DW0ZcGRzoslXfvz59SL/AVp8QwGZp9gOPr',
	}  
}
