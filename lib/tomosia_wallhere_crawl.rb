require 'open-uri'
require 'nokogiri'
require 'writeexcel'
module TomosiaWallhereCrawl
	class CrawlImage
		def savedata (data = {}, description)
		  workbook  = WriteExcel.new("#{description}/InfoImage.xls")
		  worksheet = workbook.add_worksheet
		    data.each_with_index do |row, stt|
		    row.each do |key, value|
		      worksheet.write_string(stt, 0, row['name'])
		      worksheet.write_url(stt, 1, row['url'])
		      worksheet.write_string(stt, 2, row['extension'])
		      worksheet.write_string(stt, 3, row['size'])
		      end
		    end
		  workbook.close
		end
		def crawldata(key,description,max)
			data=[]
			
			  	sum = 0
			  	index = 1
				while sum != max do
				 	# Open url
				  	url = "https://wallhere.com/en/wallpapers?q=#{key}&page=#{index}"
				  	document = open(url)
				  	content = document.read
				  	parsed_content = Nokogiri::HTML(content)				  
				  	length = parsed_content.css('.item').to_a.length - 1
				  	if length == -1
				  		break
				  	else
					  	i = 0
					  	for i in i..length
						    	nameimg = File.basename(parsed_content.css('.item').to_a[i].children.children.first.to_h['src']).delete('.jpg!s')
							    # Get url img
							    urlimg = parsed_content.css('.item').to_a[i].children.children.first.to_h['src']
							    open(urlimg) do |image|
								    File.open("#{description}#{nameimg}", "w+") do |file|
								        file.write(image.read)
								      	#Get info img
								        n = nameimg
								        ui = parsed_content.css('.item').to_a[i].children.children.first.to_h['src']
								        ex = File.extname(parsed_content.css('.item').to_a[i].children.children.first.to_h['src']).delete('.!s')
								        size = File.size("#{description}#{nameimg}")
								        s = "#{size} kb"
								        row = {'stt'=>i, 'name'=>n, 'url'=>ui, 'extension'=>ex, 'size'=>s}
								        data.push(row)
								    end
								end
								sum += 1
							    if max == sum
							      break
							    end
					  	end
					end
				    index += 1
				end
				savedata(data,description)
    end
    def crawl(key,description,max = nil)
      mutithread = (0..2).map do
        Thread.new do
          crawldata(key,description,max)
        end
      end
      mutithread.map(&:join)
    end
	end
end

