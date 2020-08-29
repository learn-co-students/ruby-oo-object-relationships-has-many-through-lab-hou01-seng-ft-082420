class Genre
    attr_accessor :name 
    @@all = []

    def initialize(genre_name)
        @name = genre_name 

        self.class.all << self
    end 

    def self.all
        @@all
    end 

    def songs
        Song.all.select { |song| song.genre == self}
    end 
    
    def artists
        songs.collect { |song| song.artist}
    end 
end 