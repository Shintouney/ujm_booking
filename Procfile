release: bin/auto_migrate
web: jemalloc.sh bundle exec puma -C config/puma.rb
worker: bundle exec sidekiq -C config/sidekiq_heroku.yml
