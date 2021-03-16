    require "open-uri"
    require "nokogiri"
    require "pry"
    require_relative "../lib/scotchlist.rb"
class Scraper

    SITE_URL = "http://en.wikipedia.org"
    
    def self.scrape_scotch
        html = open("https://en.wikipedia.org/wiki/List_of_whisky_distilleries_in_Scotland")
        doc = Nokogiri::HTML(html)
        #binding.pry
        doc.css(".sortable.wikitable").css("tr").each do |row|
            distillery =  row.css('td:nth-child(1)').text.strip
            location =  row.css('td:nth-child(2)').text.strip
            region =  row.css('td:nth-child(3)').text.strip
            ScotchList.new(distillery, location, region)
            
            

            
        end
    end

    def self.scrape_scotch_region(row)
        html = open(SITE_URL+row.region)
        doc =  Nokogiri::HTML(html)
        binding.pry
    end
end
Scraper.scrape_scotch
        # whisky_table.each do |whisky|
        #     binding.pry
        #     distillery
       
        #     whisky
        #whisky_table = doc.css(".sortable.wikitable").css("td")

        # distillery = scotch.css("a").attr("href").value
            # location = scotch.css("")
            # region =  scotch.css("a").attr("href").value
            #scotch.text.gsub(/\n/, " ").strip
    #doc.css(".sortable.wikitable").css("tr").text
   # scotch.text.gsub(/\n/, " ") this removes extras
    #scotch.css("a").attr("href").value
    #scotch.css("a").attr("title").value
       
