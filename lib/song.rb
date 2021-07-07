class Song
    attr_accessor :artist
    @@all = []

    def initialize name
        @name = name
        @@all << self
    end

    def name 
        @name
    end

    def self.all 
        @@all
    end

    def artist_name
        if self.artist == nil
            return nil
        else
            return self.artist.name
        end
    end
end