class Genre
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    attr_accessor :name, :song, :aritst
    def self.all
        @@all
    end
    def songs
        Song.all.select{|song| song.genre == self}
    end
    def artists
        songs.collect{|song| song.artist}
    end
end