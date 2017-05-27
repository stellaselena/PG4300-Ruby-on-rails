FROM ruby:2.2.6

# Set the working directory to /app
RUN apt-get update -qq \
 && apt-get install -yqq --no-install-recommends \
 postgresql-client \
 nodejs




ENV APP_HOME /fitnesspage

RUN mkdir $APP_HOME

ADD . $APP_HOME

WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/

RUN bundle install

RUN chmod 0777 -R $APP_HOME

RUN useradd -m myuser
USER myuser



CMD ruby bin/rails server