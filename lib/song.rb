require "pry"

class Song

  attr_accessor :artist, :name, :genre
  @@all = []

  def initialize(name, genre)
    @name = name
    @genre = genre
    save
  end

  def save
    @@all <<self
  end

  def save.all
    @@all
  end

end
