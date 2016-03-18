FROM ruby:2.3.0-slim
ADD . /opt/srv/
WORKDIR /opt/srv/
RUN bundler install
CMD ["ruby", "app.rb"]
