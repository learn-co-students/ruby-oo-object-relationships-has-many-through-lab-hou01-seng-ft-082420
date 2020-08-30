class Genre

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
         Song.all.select {|song| song.genre == self}
    end

    def self.all
        @@all
    end

    def artists
        #knows all the artists through the songs method above
        songs.map {|song| song.artist}.uniq
    end


end