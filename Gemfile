# frozen_string_literal: true

source 'https://rubygems.org'

# Force git gems to use secure HTTPS
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# All the gems not in a group will always be installed:
#   http://bundler.io/v1.6/groups.html#grouping-your-dependencies
gem 'bootstrap-sass'
gem 'coffee-rails', '~> 4.2' # Use CoffeeScript for .coffee assets and views
gem 'jbuilder', '~> 2.5' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jquery-rails' # Use jquery as the JavaScript library
gem 'lograge'
gem 'logstash-event'
gem 'logstash-logger'
gem 'puma', '~> 3.7' # Use Puma as the app server
gem 'rails', '~> 5.1.4'
gem 'request_store'
gem 'sass-rails', '~> 5.0' # Use SCSS for stylesheets
gem 'therubyracer', platforms: :ruby # See https://github.com/rails/execjs#readme
gem 'turbolinks', '~> 5' # Read more: https://github.com/turbolinks/turbolinks
gem 'uglifier', '>= 1.3.0' # Use Uglifier as compressor for JavaScript assets

###
# Sanger gems
###
gem 'aker_credentials_gem', github: 'sanger/aker-credentials'
gem 'aker_shared_navbar', github: 'sanger/aker-shared-navbar'

###
# Groups
###
group :development, :test do
  gem 'byebug', platforms: :mri
  gem 'capybara', '~> 2.13'
  gem 'launchy'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 3.6'
  gem 'selenium-webdriver'
end

group :development do
  gem 'brakeman', require: false
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'rake'
  gem 'rubycritic'
  gem 'simplecov', require: false
  gem 'simplecov-rcov'
end
