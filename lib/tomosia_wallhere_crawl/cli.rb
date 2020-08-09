require 'thor'
require_relative '../tomosia_wallhere_crawl'

module TomosiaWallhereCrawl 
  class Cli < Thor
    desc "crawl KEYWORD", "enter KEYWORD to search"
    option :destination
    option :max
    def crawl(keyword)
      TomosiaWallhereCrawl::CrawlImage.new.crawldata(keyword, options[:destination], options[:max])
    end
  end
end