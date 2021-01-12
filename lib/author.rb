class Author

    attr_accessor :name, :posts

    @@post_count = 0

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post)
        @posts << post
        post.author = self
        @@post_count += 1
    end

    def posts
        @posts
    end

    def add_post_by_title(title)
        post = Post.new(title)
        @posts << post
        #we aer in instance method therefor self reffers to a instance of Author class
        post.author=(self)
        @@post_count += 1
    end

    def self.post_count
        @@post_count
    end

end