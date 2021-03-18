require "pry"
class ScotchList

    attr_accessor :distillery, :location, :region
   
    @@all = []
    @@speyside = []
    @@highland = []
    @@lowland = []
    @@islay = []
    @@island = []
    @@campbeltown = []

    def initialize(distillery, location, region)
        @distillery = distillery
        @location = location
        @region = region
        regions
        @@all << self
    end

    def regions 
        if @region == "Lowland" 
            @@lowland << self
        elsif @region == "Speyside"
            @@speyside << self
        elsif @region == "Highland"
            @@highland << self
        elsif @region == "Islay"
            @@islay << self
        elsif @region == "Island"
            @@island << self
        elsif @region == "Campbeltown"
            @@campbeltown << self
            #binding.pry            
        end
                
    end

    def self.all
        @@all
    end

    def self.lowland
        @@lowland
    end

    def self.highland
        @@highland
    end

    def self.islay
        @@islay
    end

    def self.island
        @@island
    end

    def self.speyside
        @@speyside
    end

    def self.campbeltown
        @@campbeltown
    end



end

