FROM ruby:2.3-alpine
LABEL maintainer="raffaele messuti <raffaele@atomotic.com>"

RUN apk add --update alpine-sdk git graphviz font-bitstream-type1 \
	tzdata nodejs qt5-qtwebkit-dev mariadb-dev mysql-client imagemagick6 imagemagick6-dev

WORKDIR /home
RUN git clone https://github.com/benwbrum/fromthepage.git

COPY local/Gemfile /home/fromthepage/Gemfile
COPY local/database.yml /home/fromthepage/config/database.yml

RUN cd fromthepage; rm Gemfile.lock; QMAKE=/usr/lib/qt5/bin/qmake bundle install