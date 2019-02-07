source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.6'

group :production do
  gem 'pg'
end
group :development do
  gem 'sqlite3'
end


gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end
group :development do

  gem 'web-console', '>= 3.3.0'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'carrierwave', '~> 1.0'
gem 'sprockets-rails', :require => 'sprockets/railtie'
gem 'devise-bootstrap-views'
gem 'bootstrap-sass', '3.2.0.2'
gem 'bootstrap', '~> 4.0.0.alpha3'
gem 'jquery-rails'
gem 'nested_form_fields'
gem 'will_paginate-bootstrap'
gem 'will_paginate'
gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
