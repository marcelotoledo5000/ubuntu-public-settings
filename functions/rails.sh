function rake_db_setup(){
  bundle exec rake db:drop db:create db:migrate db:seed
  RAILS_ENV=test bundle exec rake db:migrate
}

function beagle_db_setup(){
  bundle exec rake db:drop db:create db:s3_downloader db:migrate db:seed
  RAILS_ENV=test bundle exec rake db:migrate
}

function rails_db_setup(){
  bundle exec rails db:drop db:create db:migrate db:seed
  RAILS_ENV=test bundle exec rails db:migrate
}