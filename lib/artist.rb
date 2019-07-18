require 'pry'
require './lib/song.rb'

class Artist

  attr_accessor :name, :songs, :artist_song_count

  @@artists = []

  def initialize(name)
    @name = name
    @songs = []
    @artist_song_count = 0
    @@artists << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @artist_song_count += 1
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self
    @songs << new_song
    @artist_song_count += 1
  end

  def self.song_count
    total = @@artists.reduce(0) do |total, instance|
      total += instance.artist_song_count
    end
  end

# binding.pry
end
