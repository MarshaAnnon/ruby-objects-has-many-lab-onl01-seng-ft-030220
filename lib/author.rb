require "pry"

class Author

  attr_accessor :name

  def initialize(name)
    @name = name
    @author = self
  end

  def posts
    Post.all.select { | posts | post.author == self}
    end

  def add_post(post)
      post = Post.new(post)
      add_post(post)
      @@post_count += 1
    end

    def self.post_count
      @@post_count
    end


end
