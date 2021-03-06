source 'https://rubygems.org'

# ------------------------------------------ Base

# ruby/rails version
ruby '2.1.4'
gem 'rails', '4.1.0'

# app server
gem 'unicorn-rails'

# database adapter
gem 'pg'

# ------------------------------------------ Assets

# stylesheets helpers
gem 'sass-rails'
gem 'compass-rails', '>= 2.0.2'
gem 'bourbon'
gem 'bones-rails'

# javascripts helpers
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'backbone-on-rails'

# ------------------------------------------ View Helpers

gem 'simple_form'
gem 'jbuilder'
gem 'pickadate-rails'
gem 'kaminari'

# ------------------------------------------ Utilities

gem 'devise'
gem 'cambium', '~> 1.2.0'
gem 'paper_trail'
gem 'pg_search'
gem 'mark_it_zero', '~> 0.3.0'
gem 'peanut_gallery', '~> 0.1.0'
gem 'yaml_db'
gem 'superslug', '~> 1.2.0'


group :production do
  gem 'rails_12factor'
end

# ------------------------------------------ Console Helpers

gem 'rails-console-tweaks'

group :console do
  gem 'wirb'
  gem 'hirb'
  gem 'awesome_print'
end

# ------------------------------------------ Error Handling

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
end

# ------------------------------------------ Performance

group :production do
  gem 'rack-cache', :require => 'rack/cache'
end

# ------------------------------------------ Testing

group :development, :test do
  gem 'annotate'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'rspec-rails'
end
