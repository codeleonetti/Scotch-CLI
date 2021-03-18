require "pry"
class AllAboutScotch

    def greeting # user greeting/ links my scotch scraper
        puts "Welcome to all about Scotch!"
        Scraper.scrape_scotch
        region_menu 
        
    end

    def list_regions # method hard sets regions for user to pick
        puts "Please choose a region to see scotches from that region."
        puts
        puts "Please enter an number 1 - 6"
        puts
        puts "1. Speyside"
        puts "2. Highland"
        puts "3. Isalnd"
        puts "4. Lowland"
        puts "5. Islay"
        puts "6. Campbeltown"
        puts
           
    end

    def region_menu
        list_regions
        #puts "Please enter a valid number"
        input = gets.chomp
        if !input.to_i.between?(1,6)  
            puts "Please enter a valid number"  
            another_selection
            list_regions
            region_menu
        else   
            list_spey(input)
            another_selection
        end
        
    end

    def list_spey(input)#um yeah this code this method iterates over each region and selects the distilleries of that region
         if input.to_i == 1 
            puts "Welcome to Speyside Region"
            ScotchList.speyside.each.with_index(1) do |list, i|
            puts"#{i}. #{list.distillery}"
            end
            puts "Please select a distillery to see more information:"
            distillery_input = gets.chomp
            actual_input = ScotchList.speyside[distillery_input.to_i-1]
            puts "Located in #{actual_input.location}, Scotland."
            Scraper.info_scrape(actual_input)
            puts "#{actual_input.info}"
        elsif input.to_i == 2
            puts "Welcome to Highland Region"
            ScotchList.highland.each.with_index(1) do |list, i|
            puts"#{i}. #{list.distillery}"
            end  
            puts "Please select a distillery to see more information:"
            distillery_input = gets.chomp
            actual_input = ScotchList.highland[distillery_input.to_i-1]
            puts "Located in #{actual_input.location}, Scotland."
            Scraper.info_scrape(actual_input)
            puts "#{actual_input.info}"
        elsif input.to_i == 3
            puts "Welcome to Island Region" 
            ScotchList.island.each.with_index(1) do |list, i| 
            puts"#{i}. #{list.distillery}"
            end
            puts "Please select a distillery to see more information:"
            distillery_input = gets.chomp
            actual_input = ScotchList.island[distillery_input.to_i-1]
            puts "Located in #{actual_input.location}, Scotland."
            Scraper.info_scrape(actual_input)
            puts "#{actual_input.info}"
        elsif input.to_i == 4
            puts "Welcome to Lowland Region"
            ScotchList.lowland.each.with_index(1) do |list, i|
            puts"#{i}. #{list.distillery}" 
            end
            puts "Please select a distillery to see more information:"
            distillery_input = gets.chomp
            actual_input = ScotchList.lowland[distillery_input.to_i-1]
            puts "Located in #{actual_input.location}, Scotland."
            Scraper.info_scrape(actual_input)
            puts "#{actual_input.info}"
        elsif input.to_i == 5
            puts "Welcome to Islay Region"
            ScotchList.islay.each.with_index(1) do |list, i|
            puts"#{i}. #{list.distillery}"
            end
            puts "Please select a distillery to see more information:"
            distillery_input = gets.chomp
            actual_input = ScotchList.islay[distillery_input.to_i-1]
            puts "Located in #{actual_input.location}, Scotland."
            Scraper.info_scrape(actual_input)
            puts "#{actual_input.info}"
        elsif input.to_i == 6
            puts "Welcome to Campbeltown Region"
            ScotchList.campbeltown.each.with_index(1) do |list, i|
            puts"#{i}. #{list.distillery}"
            end
            puts "Please select a distillery to see more information:"
            distillery_input = gets.chomp
            actual_input = ScotchList.campbeltown[distillery_input.to_i-1]
            puts "Located in #{actual_input.location}, Scotland."
            Scraper.info_scrape(actual_input)
            puts "#{actual_input.info}"
        end  
    end
    
    def another_selection
            puts
            puts "Would you like to choose another distillery?"
            puts
            puts "1. yes"
            puts "2. no"
            yes_or_no = gets.chomp
            if yes_or_no.to_i == 1 || yes_or_no == "yes" 
                region_menu 
            elsif yes_or_no.to_i == 2 || yes_or_no == "no"
            puts     
            puts "Thank You for looking through All about scotch!"
            puts "if you would like more info on each distillery please look at."   
            puts "https://en.wikipedia.org/wiki/List_of_whisky_distilleries_in_Scotland" 
                exit
        end
    end
end

#list_spey.ScotchList(location)
#Scraper.scrape_scotch_region(location)
 # if !input.to_i.between?(1, distillery.count) 
        #     ScotchList.speyside.each {|list| puts"#{list.location}"}
        #     binding.pry
