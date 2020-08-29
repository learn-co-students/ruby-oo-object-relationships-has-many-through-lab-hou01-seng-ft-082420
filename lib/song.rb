class Song
    attr_accessor :song_name, :artist, :genre
    @@all = []

    def initialize(song_name,artist,genre)
        @song_name = song_name
        @artist = artist
        @genre = genre

        self.class.all << self
    end 

    def self.all
        @@all
    end 

end 