# Raises Nginx's open file limit so it can handle many concurrent requests
exec { 'fix-nginx-ulimit':
  command => "sed -i 's/15/4096/' /etc/default/nginx",
  path    => ['/usr/local/bin', '/usr/bin', '/bin'],
}

-> exec { 'restart-nginx':
  command => 'service nginx restart',
  path    => ['/usr/local/bin', '/usr/bin', '/bin', '/usr/sbin', '/sbin'],
}
