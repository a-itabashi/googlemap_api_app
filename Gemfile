source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.1'
gem 'sqlite3', '~> 1.3.6'
gem 'puma', '~> 4.3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'carrierwave', '~> 1.0'
gem 'mini_magick'
gem 'font-awesome-rails'
gem 'bcrypt', '~> 3.1.7'

gem 'gmaps4rails'  # railsでGoogle mapを使えるようにする
gem 'geocoder'     # 地名から緯度経度を引けるようにする

gem 'dotenv-rails'
gem 'gon'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'spring'
  gem "rspec-rails"
  gem 'spring-commands-rspec'
  gem "factory_bot_rails"
  gem 'faker'
  gem "database_cleaner"
  gem "launchy"
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'pry-rails'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'letter_opener_web'
  gem 'mini_magick'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
