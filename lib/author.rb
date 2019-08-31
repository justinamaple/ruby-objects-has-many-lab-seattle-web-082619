class Author
  attr_accessor :name, :posts
  
  def initialize(name)
    self.name = name
    self.posts = []
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