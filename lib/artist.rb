

class Artist

    @@all = []

    attr_accessor :name

    def initialize(name)
       @name = name
       @@all << self
    end

    def self.all
        @@all
    end

    def songs
       this_artists = Song.all.select {|each_song| each_song.artist == self}
       
    end

    def new_song(name, genre)
        newsong = Song.new(name, self, genre) 
    end

    def genres
        self.songs.map {|each_song| each_song.genre}
    end


end