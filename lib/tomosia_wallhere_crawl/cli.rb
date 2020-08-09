require 'thor'
module TomosiaWallhereCrawl 
  class Cli < Thor
    desc "sayHello NAME", "Say hello to NAME"
    def sayHello name
      puts "Hello #{name}"
    end
  end
end