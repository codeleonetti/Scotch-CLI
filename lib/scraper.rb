   
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
            if row.css('td:nth-child(1)').css("a").attr("href") != nil
                url =  row.css('td:nth-child(1)').css("a").attr("href").value.strip
            else 
                url = nil
            end
            ScotchList.new(distillery, location, region, url)             
        end
    end

    def self.info_scrape(actual_input)
        html = open(SITE_URL + actual_input.url)
        doc = Nokogiri::HTML(html)
        actual_input.info = doc.css("p")[4].text.strip
        #binding.pry
    end
   
end

      
       
