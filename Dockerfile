FROM wordpress:5.3.2-fpm-alpine

# set upload size settings
RUN { \
		echo 'file_uploads = On'; \
		echo 'memory_limit = 64M'; \
		echo 'upload_max_filesize = 64M'; \
		echo 'post_max_size = 64M'; \
		echo 'max_execution_time = 600'; \
	} > /usr/local/etc/php/conf.d/uploads.ini