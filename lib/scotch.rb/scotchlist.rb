
class ScotchList

    attr_accessor :distillery, :location, :region, :owner

    @@all = []

    def initialize(distillery, location, region, owner)
        @distillery = distillery
        @location = location
        @region = region
        @owner = owner
        @@all << self
    end

    def self.all
        @@all
    end

end