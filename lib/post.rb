require "pry"

class Post

  @@all = []

  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @author = author
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end
