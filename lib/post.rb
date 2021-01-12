class Post
    attr_accessor :title
    attr_reader :author

    @@all = []

    def initialize(title)
        @title = title
        @@all << self

    end

    def self.all
        @@all
    end

    def author=(author)
        @author = author
        author.add_post(self) unless author.posts.include?(self)
    end

    def author_name
        if @author == nil
            nil
        
        else
            @author.name
        end
    end


end