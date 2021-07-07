class Post
    attr_accessor :author, :name
    @@all = []
    def initialize name
        @name = name
        @@all << self
    end
    
    def title
        @name
    end

    def self.all
        @@all
    end

    def author_name
        if self.author == nil
            return nil
        else
            return self.author.name
        end
    end
end