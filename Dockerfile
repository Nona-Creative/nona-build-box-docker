# Nona Creative Build Box
FROM ubuntu:xenial
MAINTAINER Nona Creative <studio@nonacreative.com>
RUN apt-get update && apt-get install -y --no-install-recommends unzip php git curl npm jq make
RUN apt-get install -y php7.0-zip php7.0-mcrypt php-xml php7.0-mcrypt php7.0-mbstring
RUN phpenmod zip mcrypt json xml dom mbstring
RUN curl -sL https://deb.nodesource.com/setup_5.x | bash && apt-get install -y nodejs
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer global require wp-cli/wp-cli
RUN npm install -g grunt bower gulp node-gyp coffee-script marked
RUN echo '{ "allow_root": true }' > /root/.bowerrc
