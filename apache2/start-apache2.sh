if ! test -f "/home/runner/.apt/usr/sbin/apache2" > /dev/null; then install-pkg apache2; fi
# if ! test -f "/home/runner/.apt/usr/lib/apache2/modules/libphp7.4.so"; then install-pkg libapache2-mod-php7.4; fi

source /home/runner/.apt/etc/apache2/envvars
export APACHE_RUN_DIR=$(pwd)
export APACHE_LOG_DIR=$(pwd)/apache2
export APACHE_PID_FILE=$(pwd)/apache2/apache2.pid
export APACHE_DOCUMENT_ROOT=$(pwd)
/home/runner/.apt/usr/sbin/apache2 -f "$(realpath .)/apache2/apache2.conf" -DFOREGROUND