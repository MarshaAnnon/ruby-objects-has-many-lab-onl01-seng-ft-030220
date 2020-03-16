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

end
