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
        input = gets.chomp
        if !input.to_i.between?(1,6)   
            list_regions
            region_menu
        else     
            list_spey(input)
            another_selection
        end 
    end

    def list_spey(input)#um yeah this code this method iterates over each region and selects the distilleries of that region
         if input.to_i == 1 
            ScotchList.speyside.each.with_index(1) do |list, i|
            puts"#{i}. #{list.distillery}"
            end
            puts "Please select a distillery to see more information"
            distillery_input = gets.chomp
            actual_input = ScotchList.speyside[distillery_input.to_i-1]
            puts "#{actual_input.location}"
        elsif input.to_i == 2
            ScotchList.highland.each.with_index(1) do |list, i|
            puts"#{i}. #{list.distillery}"
            end  
            puts "Please select a distillery to see more information"
            distillery_input = gets.chomp
            actual_input = ScotchList.highland[distillery_input.to_i-1]
            puts "#{actual_input.location}" 
        elsif input.to_i == 3 
            ScotchList.island.each.with_index(1) do |list, i| 
            puts"#{i}. #{list.distillery}"
            end
            puts "Please select a distillery to see more information"
            distillery_input = gets.chomp
            actual_input = ScotchList.island[distillery_input.to_i-1]
            puts "#{actual_input.location}"
        elsif input.to_i == 4
            ScotchList.lowland.each.with_index(1) do |list, i|
            puts"#{i}. #{list.distillery}" 
            end
            puts "Please select a distillery to see more information"
            distillery_input = gets.chomp
            actual_input = ScotchList.lowland[distillery_input.to_i-1]
            puts "#{actual_input.location}"
        elsif input.to_i == 5 
            ScotchList.islay.each.with_index(1) do |list, i|
            puts"#{i}. #{list.distillery}"
            end
            puts "Please select a distillery to see more information"
            distillery_input = gets.chomp
            actual_input = ScotchList.islay[distillery_input.to_i-1]
            puts "#{actual_input.location}"
        elsif input.to_i == 6 
            ScotchList.campbeltown.each.with_index(1) do |list, i|
            puts"#{i}. #{list.distillery}"
            end
            puts "Please select a distillery to see more information"
            distillery_input = gets.chomp
            actual_input = ScotchList.campbeltown[distillery_input.to_i-1]
            puts "#{actual_input.location}"
        
        end  
    end
    
    def another_selection
            puts
            puts "Would you like to choose another distillery?"
            puts
            puts "1. yes"
            puts "2. no"
            yes_or_no = gets.chomp
            if yes_or_no == 1
               return list_regions 
                list_spey(input)
            else yes_or_no == 2 
            puts     
            puts "Thank You for searching through All about scotch"
            puts "if you would like more info on each scotch please look at"   
            puts "https://en.wikipedia.org/wiki/List_of_whisky_distilleries_in_Scotland" 
        end
    end
end

#list_spey.ScotchList(location)
#Scraper.scrape_scotch_region(location)
 # if !input.to_i.between?(1, distillery.count) 
        #     ScotchList.speyside.each {|list| puts"#{list.location}"}
        #     binding.pry
