source 'http://rubygems.org'

gem 'rake',              '~> 0.9.2'
gem 'sass',              '~> 3.2.5'
gem 'zurb-foundation',   '~> 4.0.5', require: false

gem 'middleman',         '~> 3.0.12'
gem 'builder'
gem 'sitemap_generator'
gem 'coffee-script'
gem 'nokogiri'
gem 'redcarpet'
gem 'pygments.rb'

gem 'html5-boilerplate', :require => 'html5-boilerplate',
                         :git     => 'git://github.com/edenspiekermann/compass-html5-boilerplate.git',
                         :branch  => 'padrino'

group :development do
  gem 'heroku',       '2.26.6', :require => false
end

group :production do
  gem 'puma',         '~> 1.6.3'
  gem 'rack-contrib'
  gem 'rack-rewrite'
end

# FIXME: Need to set this up with Bundler groups correctly
gem 'heroku_san',   '3.0.2'

gem 'rb-inotify', '~> 0.9', require: false
gem 'icalendar'
