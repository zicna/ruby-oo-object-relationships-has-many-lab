class Author
    #has many posts
    #parent

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
    end

    def posts
        @posts
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self if post.author != self
        @posts << post

    end

end