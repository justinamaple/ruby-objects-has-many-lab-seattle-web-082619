class Author
  attr_reader :posts
  attr_accessor :name
  
  def initialize(name)
    self.name = name
    posts = []
  end
  
  def add_post(post)
    post.author_name = name
    posts << post
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end
  
  def post_count
    posts.count
  end
end