class Artist

    attr_accessor :name, :genre

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |my_songs|
            my_songs.artist == self
        end
    end

    def genres
        self.songs.collect {|song| song.genre}
    end

end
