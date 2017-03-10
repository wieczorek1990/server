FROM ruby

ARG ROOT=/var/www/server
RUN echo "ROOT=$ROOT" >> /etc/environment

RUN gem install bundler

COPY Gemfile $ROOT/Gemfile
RUN cd $ROOT && bundle install

COPY main.rb $ROOT/main.rb

CMD . /etc/environment && ruby $ROOT/main.rb
