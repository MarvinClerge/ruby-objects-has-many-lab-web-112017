require 'pry'
class Artist
  attr_accessor :name
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song_name)
    song_name.artist = self
    @songs << song_name
    @@song_count += 1
    self
  end

  def add_song_by_name(song_name)
    song_name = Song.new(song_name)
    song_name.artist = self
    @songs << song_name
    @@song_count += 1
    self
  end

  def self.song_count
    @@song_count
  end
end
