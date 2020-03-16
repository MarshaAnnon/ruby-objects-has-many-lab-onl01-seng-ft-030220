require "pry"

class Post

  @@all = []

  attr_accessor :title

  def initialize(title)
    @title = title
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end
