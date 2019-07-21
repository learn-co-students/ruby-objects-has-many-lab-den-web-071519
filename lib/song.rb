class Song
    attr_accessor :artist, :name

    @@all = []

    def self.all
        @@all
    end

    def initialize name
        @name = name
        Song.all << self
    end

    def artist_name
         if self.artist
            self.artist.name
         end
    end

end
