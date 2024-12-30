# Use the official Nginx image
FROM nginx:alpine

# Variables for linux user
ARG UID=1001
ARG UNAME=www
ARG GID=1001
ARG GNAME=www

# Create a new user with the specified UID and GID
RUN addgroup -g $GID -S $GNAME && adduser -u $UID -S $UNAME -G $GNAME

# Create necessary directories and set ownership
RUN mkdir -p /var/cache/nginx/client_temp /var/log/nginx /var/lib/nginx /var/www/html && \
    chown -R ${UNAME}:${GNAME} /var/cache/nginx /var/lib/nginx /var/log/nginx /var/www/html

# Copy the configuration file from the local directory to the /etc/nginx/conf.d directory
COPY ./.docker/nginx/nginx.conf /etc/nginx/nginx.conf

# remove the default configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Expose port 80 to the outside world so that the application can be accessed from the browser
EXPOSE 80

# Command to start Nginx
CMD ["nginx", "-g", "daemon off;"]
