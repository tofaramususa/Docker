FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS `$DB_DATABASE`;
ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_ROOT_PASSWORD';
CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED by '$DB_PASSWORD';
GRANT ALL PRIVILEGES ON `$DB_DATABASE`.* TO '$DB_USER'@'%';

FLUSH PRIVILEGES;