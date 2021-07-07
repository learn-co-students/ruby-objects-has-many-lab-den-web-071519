 class Author
    attr_accessor :name
    @@all = []
    
    def initialize name
        @name = name
        @posts = []
        @@all << self
    end

    def posts
        @posts
    end

    def add_post post
        post.author = self
        @posts << post
    end

    def add_post_by_title name
        post = Post.new(name)
        post.author = self
        @posts << post
    end

    def self.post_count
        counter = 0
        @@all.each do |author|
            author.posts.each do |post|
                counter += 1
            end
        end
        counter
    end
 end