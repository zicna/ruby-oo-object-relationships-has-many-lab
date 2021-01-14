class Post
    #belongs to Author
    #child

    attr_accessor :title
    attr_reader :author

    def initialize(title)
        @title = title
        @author = []
    end

    def author=(author)
        @author = author

        author.add_post(self) unless author.posts.include?(self)
    end


end