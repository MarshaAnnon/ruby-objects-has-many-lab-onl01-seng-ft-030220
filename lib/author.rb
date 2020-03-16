require "pry"

class Author

  attr_accessor :name :author

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select { | posts | post.author == self}
    end

end
