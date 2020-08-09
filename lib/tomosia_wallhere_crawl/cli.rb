require 'thor'
require_relative '../tomosia_wallhere_crawl'

module TomosiaWallhereCrawl 
  class Cli < Thor
    desc "crawl KEYWORD", "enter KEYWORD to search"
    option :destination
    option :max
    def crawl(keyword)
      if options[:max] == nil
        TomosiaWallhereCrawl::CrawlImage.new.crawldata(keyword, options[:destination], options[:max])
      else
        TomosiaWallhereCrawl::CrawlImage.new.crawldata(keyword, options[:destination], options[:max].to_i)
      end
    end
  end
end