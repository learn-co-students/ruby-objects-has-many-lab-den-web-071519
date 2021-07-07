class Artist
    @@all = []
    attr_accessor :name
    def initialize name
        @name = name
        @songs = []
        @@all << self
    end

    def songs
        @songs
    end

    def add_song song
        song.artist = self
        @songs << song
    end

    def add_song_by_name title
        song = Song.new(title)
        song.artist = self
        @songs << song
    end

    def self.song_count
        counter = 0
        @@all.each do |artist|
            artist.songs.each do |song|
                counter += 1
            end
        end
        counter 
    end
end