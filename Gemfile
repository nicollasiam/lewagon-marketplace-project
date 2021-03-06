source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
# Fake mail for development
gem "letter_opener", group: :development
# Gems to make the map dynamic
gem "gmaps4rails"
source 'https://rails-assets.org' do
  gem "rails-assets-underscore"
end
# Geocoder
gem 'geocoder'
# Facebook connection
gem 'omniauth-facebook'
#Generate fakes infos
gem 'faker'
# Cloudinary
gem 'cloudinary'
# Key security
gem 'figaro'
# Video
gem 'carrierwave', '~> 0.11.2'
# Need to install ffmeg - read metadata from a video file
# On macOS: brew install ffmpeg.
# On linux: sudo apt-get install ffmpeg
gem "streamio-ffmpeg"
# Devise for user authentication
gem 'devise'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.5'
# Use pg as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Bootstrap
gem 'bootstrap-sass'
# Icons as fonts
gem 'font-awesome-sass'
# Easy forms for rails
gem 'simple_form'
# Dont want to worry with cross browser css
gem 'autoprefixer-rails'

# Gem for drag 'n drop purposes
gem 'sortable-rails'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'pry-byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
