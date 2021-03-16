
class AllAboutScotch

    def greeting
        puts "Welcome to all about Scotch!"
        Scraper.scrape_scotch
        list_regions
        region_menu
        
        
    end

    def list_regions
           puts "1. Speyside"
           puts "2. Highland"
           puts "3. Isalnd"
           puts "4. Lowland"
           puts "5. Islay"
           puts "6. Campbeltown"
           #binding.pry
        
    end


    def region_menu
        puts "Please choose a region to see scotches from that region"
        input = gets.chomp
        if !input.to_i.between?(1,6)
            puts "Please enter an number 1 - 6" 
        list_regions
        region_menu
        else
            # need to have regions printed when user selects a region it will print the scotch list from that region
        list_scotches(input)
        
        end

        
    end

    def list_scotches(input)
        if input.to_i == 1 - 6 
           
            ScotchList.regions.each.with_index(1) do |list, i|
                puts"#{i}. #{list.distillery}"
            end
            #binding.pry
        end
    end

end

