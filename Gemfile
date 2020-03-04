source 'https://rubygems.org'
ruby '2.6.4'

gem "twitter-bootstrap-rails"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 6.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 4.2'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

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


# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1'

# Making fake data
# https://github.com/stympy/faker
gem 'faker'

# For pagination
# https://github.com/mislav/will_paginate
gem 'will_paginate', '~> 3.3'
gem 'bootstrap-will_paginate', '~> 1.0'

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

