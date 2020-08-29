class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        

        self.class.all << self
    end 

    def self.all
        @@all
    end 

    def songs
        Song.all.select { |song| song.artist == self}
    end 

    def new_song(name,genre)
        name = Song.new(name,self,genre)
    end 
    
    def genres
        songs.collect { |song| song.genre}
    end 
    
end