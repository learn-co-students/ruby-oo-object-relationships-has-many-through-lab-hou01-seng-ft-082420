class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        #given a name and genre, creates a new song associated
        #with that artist
        Song.new(name, self, genre)
    end

    def songs
        #returns all songs associated with this Artist
        Song.all.select {|song| song.artist == self}
    end

    def genres
        #knows all the genres through the songs method above
        songs.map {|song| song.genre}.uniq
    end

end