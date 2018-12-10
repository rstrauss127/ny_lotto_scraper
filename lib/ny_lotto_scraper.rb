require 'open-uri'
require 'nokogiri'
require 'pry'
require 'require_all'

require_all "./lib"
require_relative './ny_lotto_scraper/cli'
require_relative './ny_lotto_scraper/game'
require_relative './ny_lotto_scraper/state'


require 'bundler'

Bundler.require
