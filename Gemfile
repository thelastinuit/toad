source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'pagy'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'rack-cors', require: 'rack/cors'
gem 'rails', '~> 6.0.3', '>= 6.0.3.3'
gem 'rswag'

group :development, :test do
  gem 'ffaker'
  gem 'pry-rails'
  gem 'rspec-rails', '~> 3.5'
end

group :development do
  gem 'foreman'
  gem 'listen', '~> 3.2'
  gem 'spring'
end

group :test do
  gem 'factory_bot_rails'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false, group: :test
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
