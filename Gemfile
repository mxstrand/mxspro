source 'https://rubygems.org'

gem 'rails', '3.2.13'


# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'httparty'
gem 'jquery-rails'
gem 'devise' #used for user authentication, includes the user model
gem 'omniauth-twitter' #used for twitter-based authentication

group :production do
  gem 'pg' #production database format compatible with Heroku (SQLite is not)
  gem 'unicorn' #production web server to allow multiple simultaneous processes
end

group :development do
  gem 'sqlite3'
  gem 'thin' #local web server, faster than Webrick
  gem "better_errors"
  gem "binding_of_caller"
  gem 'brakeman', :require => false
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
  gem 'twitter-bootstrap-rails'
  gem "therubyracer" #required for bootstrap.
  gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
end

group :test, :development do
  gem 'pry-rails'
  gem 'pry-doc'
  gem 'pry-debugger'
  gem 'ruby-prof'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
