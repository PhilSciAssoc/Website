.htaccess file
%%%
ErrorDocument 404 [PREFIX]404.html

<IfModule mod_mime.c>
	AddType application/rss+xml rss
	AddCharset UTF-8 .css .html
</IfModule>

<IfModule mod_rewrite.c>
	RewriteEngine on
	RewriteBase [PREFIX]

	RewriteRule ^/*jobs/(.*)$ resources/jobs/$1 [R=permanent]
</IfModule>

<IfModule mod_expires.c>
	ExpiresActive On
	ExpiresByType image/gif "access plus 1 month"
	ExpiresByType image/jpg "access plus 1 month"
	ExpiresByType image/png "access plus 1 month"
	ExpiresDefault "modification plus 1 week"
</IfModule>

<IfModule mod_headers.c>
	<Files index.html>
		Header append Cache-Control "public, must-revalidate"
	</Files>
</IfModule>
