require 'thor'
require_relative '../tomosia_wallhere_crawl'

module TomosiaWallhereCrawl 
  class Cli < Thor
    desc "crawl KEYWORD", "enter KEYWORD to search"
    option :destination
    option :max
    def crawldata(keyword)
      TomosiaWallhereCrawl::CrawlImage.crawldata(keyword, options[:destination], options[:max].to_i)
    end
  end
end