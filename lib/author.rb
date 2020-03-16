require "pry"

class Author

  attr_accessor :name

  def initialize(name)
    @name = name
    @author = self
  end

  def add_post(post)
    post.author = self
    @@post_count += 1
  end

  def posts
    Post.all.select { | posts | post.author == self}
    end
