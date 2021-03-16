    require "open-uri"
    require "nokogiri"
    require "pry"

class Scraper
    
    def self.scrape_scotch
        html = open("https://en.wikipedia.org/wiki/List_of_whisky_distilleries_in_Scotland")
        doc = Nokogiri::HTML(html)
        #binding.pry
        doc.css(".sortable.wikitable").css("tr").each do |scotch|

        
            binding.pry
        
       
        end

    end
    #scotch.text.gsub(/\n/, " ").strip
    #doc.css(".sortable.wikitable").css("tr").text
   # scotch.text.gsub(/\n/, " ") this removes extras
  
end
Scraper.scrape_scotch
# whisky_table.each do |whisky|
        #     binding.pry
        #     distillery
       
        #     whisky
        #whisky_table = doc.css(".sortable.wikitable").css("td")