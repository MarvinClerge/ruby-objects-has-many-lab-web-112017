require 'pry'
class Author

  attr_accessor :name
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@post_count += 1
    self
  end

  def add_post_by_title(title)
    title = Post.new(title)
    title.author = self
    @posts << title
    @@post_count += 1
    self
  end

  def self.post_count
    @@post_count
  end

end
