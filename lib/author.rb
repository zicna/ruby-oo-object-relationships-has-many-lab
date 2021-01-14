class Author
    #has many posts
    #parent

    @@post_count = 0

    attr_accessor :name
    def initialize(name)
        @name = name
        @posts = []
    end

    # def add_post(post)
    #     #post = Post.new(tittle)
    #     post.author = self if post.author != self

    #     @posts << post
    # end

    def add_post(post)
        @posts << post

        post.author= (self) if post.author != self

        @@post_count += 1
    end

    def posts
        @posts
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self if post.author != self
        @posts << post
    end

    def self.post_count
        @@post_count
    end

end