require "pry"

class Artist

  @@song_count = 0
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@song_count += 1
  end

  def songs
    @songs
  end

  def song_count
    @@song_count
end
