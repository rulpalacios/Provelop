# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'cssbundling-rails'
gem 'devise'
gem 'flipper'
gem 'flipper-active_record'
gem 'flipper-ui'
gem 'google-cloud-storage', '~> 1.36'
gem 'interactor'
gem 'jbuilder', '~> 2.11'
gem 'jsbundling-rails'
gem 'mercadopago-sdk', '~> 2.1'
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'pg', '~> 1.3'
gem 'puma', '~> 5.6'
gem 'pundit', '~> 2.1', '>= 2.1.1'
gem 'rails', '~> 7.0.1'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbolinks', '~> 5'
gem 'turbo-rails'

group :development, :test do
  gem 'dotenv-rails'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rubocop', require: false
  gem 'rubocop-minitest', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
end

group :development do
  gem 'annotate'
  gem 'listen', '~> 3.7'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'factory_bot_rails'
  gem 'minitest'
  gem 'minitest-stub_any_instance'
  gem 'selenium-webdriver'
  gem 'shoulda'
  gem 'simplecov', require: false
  gem 'timecop'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
