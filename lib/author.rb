class Author

  attr_reader :name

  def initialize (name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post (post)
    post.author = self
    @posts << post
  end

  def add_post_by_title (title)
    post = Post.new(title)
    @posts << post
    post.author = self
  end

  def self.post_count
    Post.all.length
  end
end
