source 'https://rubygems.org'

gem 'activerecord', :require => 'active_record'
gem 'sinatra'
gem 'sinatra-activerecord'

group :development, :test do
  gem 'sqlite3'
  gem 'faker'
  gem 'shotgun'
  gem 'tux'
  gem 'rspec'
end
group :production do
  gem 'pg'
  gem "activerecord-postgresql-adapter"
end

