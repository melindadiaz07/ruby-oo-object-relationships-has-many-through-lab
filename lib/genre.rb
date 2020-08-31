class Genre

    @@all = []

    attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|each_song| each_song.genre == self}
    end

    def artists
        self.songs.map {|each_song| each_song.artist}
    end


end