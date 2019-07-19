require "pry"

class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        @songs
    end

    def add_song(song)
        @songs << song
        song.artist = self
        @@all << song
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
        @songs << song
        @@all << song
    end

    def self.song_count
        @@all.count
    end


end