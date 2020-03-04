source 'https://rubygems.org'
ruby '2.6.4'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 6.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 4.2'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 5.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem "mini_racer"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails"

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.10'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Using HAML instead of .erb, fanciness
gem "haml-rails", '~> 2.0'

# Paperclip for uploading images
# https://github.com/thoughtbot/paperclip
gem "paperclip", '~> 6.1'

# SimpleForm for making forms
# https://github.com/plataformatec/simple_form
# http://simple-form-bootstrap.plataformatec.com.br/examples/create_basic
gem 'simple_form'

gem 'bootsnap'

# Bootstrap!
gem 'bootstrap', '~> 4.4.1'

# Needed for windows machines
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1'

# Making fake data
# https://github.com/stympy/faker
gem 'faker'

# For pagination
# https://github.com/mislav/will_paginate
gem 'will_paginate', '~> 3.3'
gem 'bootstrap-will_paginate', '~> 1.0'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :production do
  # Heroku wanted me to put this in there, forgot why...
  gem 'rails_12factor'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'listen'



end

# gem 'puma', group: :production #TODO: Windows doesn't seem to like PUMA

