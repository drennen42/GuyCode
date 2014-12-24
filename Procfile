web:    bundle exec rails server -p $PORT
web:    bundle exec thin start -p $PORT
worker: bundle exec rake resque:work QUEUE=*
clock:  bundle exec rake resque:scheduler