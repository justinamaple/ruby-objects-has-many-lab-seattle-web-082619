class Author
  attr_reader :posts
  attr_accessor :name
  
  def initialize(name)
    self.name = name
    @posts = []
  end
  
  def add_post(post)
    @posts << post
  end
  
  def add_post_by_title(title)
    @posts << Post.new(title)
  end
  
  def post_count
    @posts.count
  end
end