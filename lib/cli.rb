require "pry"
class AllAboutScotch

    def greeting # user greeting/ links my scotch scraper
        puts "Welcome to all about Scotch!"
        Scraper.scrape_scotch
        
        region_menu 
    end

    def list_regions # method hard sets regions for user to pick
        puts "Please choose a region to see scotches from that region"
        puts
        puts "1. Speyside"
        puts "2. Highland"
        puts "3. Isalnd"
        puts "4. Lowland"
        puts "5. Islay"
        puts "6. Campbeltown"
        puts
        puts "Please enter an number 1 - 6"       
    end

    def region_menu
        list_regions
        input = gets.chomp
        if !input.to_i.between?(1,6)   
            list_regions
            region_menu
        else
            location = list_spey(input).each.with_index(1)
            self.scrape_scotch_region(row)
       # distillery_select(location)
        end 
    end

    def list_spey(input)# this method iterates over each region and selects the distilleries of that region
         if input.to_i == 1 
            ScotchList.speyside.each.with_index(1) do |list, i| 
                puts"#{i}. #{list.distillery}"
            end
        elsif input.to_i == 2
            ScotchList.highland.each.with_index(1) do |list, i|
                puts"#{i}. #{list.distillery}"
            end    
        elsif input.to_i == 3 
            ScotchList.island.each.with_index(1) do |list, i|
                puts"#{i}. #{list.distillery}"
            end 
        elsif input.to_i == 4
            ScotchList.lowland.each.with_index(1) do |list, i|
                puts"#{i}. #{list.distillery}"
            end  
        elsif input.to_i == 5 
            ScotchList.islay.each.with_index(1) do |list, i|
                puts"#{i}. #{list.distillery}"
            end 
        elsif input.to_i == 6 
            ScotchList.campbeltown.each.with_index(1) do |list, i|
                puts"#{i}. #{list.distillery}"
            end  
        end  
    end

    def distillery_select(row)
        self.scrape_scotch_region(row)

    end
       # puts "Please select a distillery to find out more"
        
        
            
   

end

#list_spey.ScotchList(location)