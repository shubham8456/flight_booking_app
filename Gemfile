source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.8'
# Use mysql2 as the database for Active Record
gem 'mysql2', '~> 0.5.4'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# devise for user authentication
gem 'devise', '~> 4.8', '>= 4.8.1'

# mounting self created engine FlightData
gem 'flight_data', path: '/Users/shrawat/shubhamsRailsProjects/flight_booking/flight_booking_app/engines/flight_data'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'

# coccon for nested form
gem 'cocoon'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# API for performing paginated queries with Active Record, DataMapper and Sequel
gem 'will_paginate', '~> 3.3', '>= 3.3.1'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rubocop'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  # gem 'capybara', '>= 2.15'
  # gem 'selenium-webdriver'
  # # Easy installation and use of chromedriver to run system tests with Chrome
  # gem 'chromedriver-helper'
  gem 'minitest', '~> 5.15'
  gem 'minitest-reporters', '~> 1.1.2' # Upgrading to 1.2.0 will require updating our Jenkins junit/xml formatting
  gem 'mocha', '~> 1.12.0', require: false
  gem 'rspec-rails', '~> 5.0'
  gem 'rspec-retry', '~> 0.6'
  gem 'factory_bot_rails', '~> 6.0'
  gem 'database_cleaner', '~> 1.7'
  gem 'rspec_junit_formatter', '~> 0.3' # Jenkins CI integration
  gem 'i18n_tools', '~> 0.1'
  gem 'simplecov-cobertura', '~> 1.4', '>= 1.4.2'
  # gem 'simplecov-coverage-module', plansource: 'gem/simplecov-coverage-module', :require => false
  # gem 'simplecov-coverage_analyzer', plansource: 'gem/simplecov-coverage_analyzer', require: true, branch: 'master'
  gem 'simplecov', '~> 0.18', require: false
  gem 'pdf-reader', '~> 2.4'
  gem 'webmock', '~> 3.5'
  gem 'capybara', '~> 3.29', require: false
  gem 'capybara-screenshot', '~> 1.0', require: false
  gem 'selenium-webdriver', '~> 3.142', require: false
  gem 'webdrivers', '~> 4.1', require: false
  gem 'rack_session_access', '~> 0.2'
  gem 'chronic', '~> 0.10.2'
  gem 'test-unit', '~> 3.3'
  gem 'ffaker', '~> 2.12'
  gem 'timecop', '~> 0.9'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
