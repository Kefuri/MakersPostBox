# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem "rails"

group :development, :test do
  gem 'capybara', '~> 3.31.0'
  gem 'rspec-rails', '~> 3.5'
  gem 'rubocop', '0.71.0'
  gem 'selenium-webdriver', '~> 3.142.7'
  gem 'webdrivers'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'simplecov', '0.17.1', require: false
  gem 'simplecov-console', require: false
end
