# Use an official PHP runtime as a parent image
FROM php:7.4-apache

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY . /var/www/html

# Install mysqli extension
RUN docker-php-ext-install mysqli && \
    docker-php-ext-enable mysqli

# Enable Apache modules
RUN a2enmod rewrite

# Update the default Apache site configuration
COPY apache-config.conf /etc/apache2/sites-available/000-default.conf

# Expose port 80 to the outside world
EXPOSE 80

# Start Apache when the container launches
CMD ["apache2-foreground"]
