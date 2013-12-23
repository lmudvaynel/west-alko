source 'https://rubygems.org'

gem 'rails', '3.2.15'

gem 'mysql2'

gem 'carrierwave'
gem 'mini_magick'
gem 'friendly_id'
gem 'ckeditor'
gem 'noty-rails'
gem 'route_translator'
gem 'i18n-js', :github => 'fnando/i18n-js'
gem 'globalize3'
gem 'ActiveAdmin-Globalize3-inputs'
gem 'ancestry'
gem 'email_validator', require: 'email_validator/strict'
gem 'client_side_validations'
gem 'acts_as_list'
gem 'activeadmin-sortable'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem 'compass-rails'
  gem 'bootstrap-sass'

  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'

  gem 'eco'
end

gem 'jquery-rails', '~> 2.3.0'
gem 'russian'

gem 'unicorn'
gem 'whenever'
gem 'exception_notification', github: 'smartinez87/exception_notification'

gem 'roboto'

gem 'ffaker'
gem 'factory_girl_rails'

group :test do
  gem 'cucumber'
  gem 'cucumber_factory'
  gem 'cucumber-websteps'

  gem 'capybara'
  gem 'capybara-screenshot'

  gem 'selenium-webdriver'

  gem 'headless'
  gem 'database_cleaner'
  gem 'simplecov', require: false

  gem 'action_mailer_cache_delivery'
  gem 'email_spec'
end

group :development do
  gem 'capistrano'
  gem 'capistrano-ext'
  gem 'capistrano-unicorn'
  gem 'rvm-capistrano', github: 'wayneeseguin/rvm-capistrano'
  gem 'capistrano-helpers'

  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rack-mini-profiler'
  gem 'sextant'
  gem 'quiet_assets'
  gem 'thin'
  gem 'letter_opener'
  gem 'pry-rails', require: false
  gem 'brakeman', require: false

  gem 'rails_best_practices', github: 'railsbp/rails_best_practices', require: false
end

group :development, :test do
  gem 'debugger'
  gem 'rspec-rails'
  gem 'cucumber-rails', :require => false
end

gem 'refinerycms', '~> 2.1.0'

gem 'refinerycms-acts-as-indexed', '~> 1.0.0'

gem 'refinerycms-products', :path => 'vendor/extensions'
gem 'refinerycms-volumes', :path => 'vendor/extensions'
gem 'refinerycms-factories', :path => 'vendor/extensions'
gem 'refinerycms-factory_photos', :path => 'vendor/extensions'