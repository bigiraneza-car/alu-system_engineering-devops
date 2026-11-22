#Fixes a typo (.phpp . php) in wp-settings.php that makes apache return a 500 error
exec { 'fix-wordpress-typo':
   command => "sed -i 's/phpp/php/g' /var/www/html/wp-settings.php",
   path    => ['/usr/local/bin', '/usr/bin', '/bin'],
}
