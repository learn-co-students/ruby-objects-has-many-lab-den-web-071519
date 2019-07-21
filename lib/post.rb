class Post
    attr_accessor :author, :title

    @@all = []

    def self.all
        @@all
    end

    def initialize title
        @title = title
        Post.all << self
    end

    def author_name
        if self.author
            self.author.name
        end
    end

end