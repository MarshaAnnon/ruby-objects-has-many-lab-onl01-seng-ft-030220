require "pry"

class Author

  @@post_count = 0

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @@post_count += 1
  end
  
  def posts
    Post.all.select { | post | post.author == self}
  end

  def songs
    Song.all.select { | song | song.artist == self}
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
end
