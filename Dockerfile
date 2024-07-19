FROM httpd
RUN echo "this is a docker contaienr built by jenkins1" > /usr/local/apache2/htdocs/index.html
