require "hoops_cli/nba"
require 'pry'

module HoopsCli
    class Scraper

        def self.scrape
            site = ""
            page = Nokogiri:HTML(open(site))
                page.css


    end
end


