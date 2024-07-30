# Better Wordpress Docker Image

This is a better Wordpress Docker image. It is based on the official Wordpress Docker image, but with some improvements:

- Apache configuration is improved to better deal with being in a container, specifically,
  ports other than 80 are supported

- Nodejs and NPM are installed, so you can use them to build your theme

- Vim is installed

- The WP CLI is installed
