# Use the official image as a parent image
FROM mariadb:11.6.2

# Define environment variables
# ENV MYSQL_ROOT_PASSWORD=root
# ENV MYSQL_DATABASE=laravel
# ENV MYSQL_USER=laravel
# ENV MYSQL_PASSWORD=secret

# Copy the content of the local .docker/mysql/custom.cnf file to the /etc/mysql/my.cnf directory
# COPY ./.docker/mysql/custom.cnf /etc/mysql/conf.d/my.cnf

# Copy the database schema to the /docker-entrypoint-initdb.d directory
COPY ./.docker/mysql/init.sql /docker-entrypoint-initdb.d/init.sql

# Make port 3306 available to the world outside this container
EXPOSE 3306
