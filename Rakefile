require 'bundler/setup'
require 'psych'
require 'yaml'
require 'middleman-gh-pages'

namespace :assets do
  task :precompile do
    sh 'middleman build'
  end
end

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
