source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'rails', '~> 6.0.6', '>= 6.0.6.1' # Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'pg', '>= 0.18', '< 2.0'          # Use postgresql as the database for Active Record
gem 'puma', '~> 4.1'                  # Use Puma as the app server
gem 'sass-rails', '>= 6'              # Use SCSS for stylesheets
gem 'jbuilder', '~> 2.7'              # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'bcrypt', '~> 3.1.7'            # Use Active Model has_secure_password
gem 'bootsnap', '>= 1.4.2', require: false # Reduces boot times through caching; required in config/boot.rb
gem "administrate", "~> 0.18.0"       # administartive dashboards
gem "sorcery", "~> 0.16.4"            # simple auth
gem "carrierwave", "~> 2.2"           # easy storing files
gem "administrate-field-carrierwave", "~> 0.5.0"
gem "administrate-field-enum",        "~> 0.0.9"

group :development, :test do
    gem 'byebug', platforms: [:mri, :mingw, :x64_mingw] # Call 'byebug' anywhere in the code to stop execution and get a debugger console
end

group :development do
  gem "i18n_generators", "~> 2.2"
  gem 'listen', '~> 3.2'
  gem 'spring' # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0' # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
end

gem 'tzinfo-data' # Windows does not include zoneinfo files, so bundle the tzinfo-data gem

gem "dotenv", "~> 2.8"
