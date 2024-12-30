CREATE USER 'admin'@'%' IDENTIFIED BY 'adpassword';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

CREATE USER 'readonly_user'@'%' IDENTIFIED BY 'password';
GRANT SELECT ON *.* TO 'readonly_user'@'%';
FLUSH PRIVILEGES;
