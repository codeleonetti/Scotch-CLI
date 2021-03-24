require "pry"
class AllAboutScotch
    def title
        puts
        puts "       sssss        cccc       oooo    ttttttttttt    cccc     hhh    hhh      "
        puts "    ssss   sss    ccc   ccc  ooo  ooo      ttt      ccc   ccc  hhh    hhh     "
        puts "     ssss         ccc        ooo  ooo      ttt      ccc        hhh    hhh    "
        puts "      sssss       ccc        ooo  ooo      ttt      ccc        hhhhhhhhhh     "
        puts "          sssss   ccc        ooo  ooo      ttt      ccc        hhh    hhh    "
        puts "     sss    ssss  ccc   ccc  ooo  ooo      ttt      ccc   ccc  hhh    hhh     "
        puts "       sssss        cccc       oooo        ttt        cccc     hhh    hhh      "
        puts  
    end

    def greeting # user greeting/ links scotch scraper
        puts
        puts "Welcome to all about Scotch!"
        puts
        Scraper.scrape_scotch
        title
        main
    end

    def list_regions # method hard sets regions for user to pick
        puts "Please choose a region to see scotches from that region."
        puts
        puts "Please enter an number 1 - 6"
        puts
        puts "1. Speyside"
        puts "2. Highland"
        puts "3. Island"
        puts "4. Lowland"
        puts "5. Islay"
        puts "6. Campbeltown"
        puts
           
    end

    def get_input
        input = gets.chomp
        if !input.to_i.between?(1,6) 
            puts "Please enter a valid number"
            puts
        else
        end
      input
    end

    def main
        done = false
        while done == false do
            list_regions
            input = get_input
            if valid?(input,1,6)
             list_distilleries(input) 
             another_selection                     # need to add the choose_another   # code that is being worked on to refactor  
             done = true
            else
             main 
            end
        end
        done
    end

    def valid?(input,low,high)
        if !input.to_i.between?(low,high)
            false
        else
            true
        end
    end

    # def menu
    #     list_regions
    #     input = gets.chomp
    #     if !input.to_i.between?(1,6)  
    #         puts "Please enter a valid number"
    #         list_regions
    #         another_selection
    #         menu
    #     else   
    #         list_distilleries(input)
    #         another_selection
    #     end
        
    # end

    def list_distilleries(input)# this method iterates over each region and selects the distilleries of that region
         if input.to_i == 1 
            puts "Welcome to Speyside Region"
            puts
            ScotchList.speyside.each.with_index(1) do |list, i|     #each one of the if and elsif statements controls the info that is sent to the user allowing
                puts"#{i}. #{list.distillery}"                          #them to see info about scotches
            end
            puts
            puts "Please select a distillery to see more information:"
            distillery_input = gets.chomp                                           # make sure inputs are valid(in range)
            actual_input = ScotchList.speyside[distillery_input.to_i-1]
            puts
            puts "Located in #{actual_input.location}, Scotland."
            Scraper.info_scrape(actual_input)
            puts
            puts "#{actual_input.info}"
        elsif input.to_i == 2
            puts "Welcome to Highland Region"
            puts
            ScotchList.highland.each.with_index(1) do |list, i|
                puts"#{i}. #{list.distillery}"
            end
            puts 
            puts "Please select a distillery to see more information:"                  # need to fix with valid method 
            distillery_input = gets.chomp
            actual_input = ScotchList.highland[distillery_input.to_i-1]
            puts "Located in #{actual_input.location}, Scotland."
            Scraper.info_scrape(actual_input)
            puts "#{actual_input.info}"
        elsif input.to_i == 3
            puts "Welcome to Island Region"
            puts
            ScotchList.island.each.with_index(1) do |list, i|
                puts"#{i}. #{list.distillery}"
            end
            puts
            puts "Please select a distillery to see more information:"
            distillery_input = gets.chomp
            actual_input = ScotchList.island[distillery_input.to_i-1]
            puts "Located in #{actual_input.location}, Scotland."
            Scraper.info_scrape(actual_input)
            puts "#{actual_input.info}"
        elsif input.to_i == 4
            puts "Welcome to Lowland Region"
            puts
            ScotchList.lowland.each.with_index(1) do |list, i|
                puts"#{i}. #{list.distillery}" 
            end
            puts
            puts "Please select a distillery to see more information:"
            distillery_input = gets.chomp
            actual_input = ScotchList.lowland[distillery_input.to_i-1]
            puts "Located in #{actual_input.location}, Scotland."
            Scraper.info_scrape(actual_input)
            puts "#{actual_input.info}"
        elsif input.to_i == 5
            puts "Welcome to Islay Region"
            puts
            ScotchList.islay.each.with_index(1) do |list, i|
                puts"#{i}. #{list.distillery}"
            end
            puts
            puts "Please select a distillery to see more information:"
            distillery_input = gets.chomp
            actual_input = ScotchList.islay[distillery_input.to_i-1]
            puts "Located in #{actual_input.location}, Scotland."
            Scraper.info_scrape(actual_input)
            puts "#{actual_input.info}"
        elsif input.to_i == 6
            puts "Welcome to Campbeltown Region"
            puts
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
        puts 
    end
    
    def another_selection # need to adjust 
            puts
            puts "Would you like to choose another distillery?"
            puts
            puts "1. yes"
            puts "2. no"
            puts
            input = get_input
            valid?(input,1,2)
            #binding.pry
        if  input.to_i == 1 || input == "yes"
                main 
        elsif input.to_i == 2 || input == "no"
            
            puts     
            puts "Thank You for looking through All about scotch!"
            puts "if you would like more info on each distillery please look at."   
            puts "https://en.wikipedia.org/wiki/List_of_whisky_distilleries_in_Scotland" 
            exit
        end
        puts
    end   
end

