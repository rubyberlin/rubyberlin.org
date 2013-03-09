require 'bundler/setup'
require 'heroku_san'

module HerokuSan::Deploy
  class RubyBerlin < Sinatra
    def deploy
      super
      #@stage.rake('utils:update_sitemap')
      #@stage.rake('utils:update_attendees')
    end
  end
end

# config_file = File.join(File.expand_path(File.dirname(__FILE__)), 'config', 'heroku.yml')
# HerokuSan.project = HerokuSan::Project.new(config_file, :deploy => HerokuSan::Deploy::RubyBerlin)
# 
# load 'heroku_san/tasks.rb'

require 'nokogiri'
require 'open-uri'
require 'yaml'
require 'sitemap_generator'

namespace :utils do
  desc "Update sitemap"
  task :update_sitemap do
    SitemapGenerator::Sitemap.default_host = 'http://rubyberlin.org'
    SitemapGenerator::Sitemap.public_path = "source"
    SitemapGenerator::Sitemap.create do
      add '/',           :changefreq => 'hourly'
      add '/imprint',    :changefreq => 'weekly'
    end
    SitemapGenerator::Sitemap.ping_search_engines
  end
end
