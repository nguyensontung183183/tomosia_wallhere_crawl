require 'open-uri'
require 'nokogiri'

# def downloadimg(keywork, urlfile)
#Open URL 
url = "https://wallhere.com/en/wallpapers?q=dog"
# url = "https://wallhere.com/vi/wallpapers?q=#{keywork}"
document = open(url)
content = document.read
parsed_content = Nokogiri::HTML(content)
#get url img ==// parsed_content.css('.item').to_a[i].children.children.first.to_h['src'] //==
#get length img
length = parsed_content.css('.item').to_a.length-1
#length = 2
i = 0
urlfile =  "/home/tung/Desktop/img/"
for i in i..length
  unless i > length
    
    #get name File.basename(parsed_content.css('.item').to_a[i].children.children.first.to_h['src']).delete('!s')
    nameimg = File.basename(parsed_content.css('.item').to_a[i].children.children.first.to_h['src']).delete('.jpg!s')
    #get url img ==// parsed_content.css('.item').to_a[i].children.children.first.to_h['src'] //==
    urlimg = parsed_content.css('.item').to_a[i].children.children.first.to_h['src']
    open(urlimg) do |image|
        File.open("#{urlfile}#{nameimg}", "w+") do |file|
        file.write(image.read)
      
    #saving info  
      n = "name: "+ nameimg
      ui ="url: "+ parsed_content.css('.item').to_a[i].children.children.first.to_h['src']  
      t ="title: "+ parsed_content.css('.item').to_a[i].children.children.first.to_h['title'].to_s
      #url-img
      ex ="extension: "+ File.extname(parsed_content.css('.item').to_a[i].children.children.first.to_h['src']).delete('!s')
      size = File.size("#{urlfile}#{nameimg}") 
      s = "size: " "#{size}" + "kb"    
      f = File.open("log.txt", "a+") do |f|
      f.write("#{i}. #{n} #{ui} #{t} #{ex} #{s} \n")
      f.close
      end
    end
    end
    
  end
end

# end
# p "keywork:"
# keywork = gets.chomp.to_s
# p "urlfile: "
# urlfile = gets.chomp.to_s
# p downloadimg("#{keywork}")




