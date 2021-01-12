
 class Song

    attr_accessor :name
    attr_reader :artist

    @@all = []

    def initialize(name)
       @name = name
       @@all << self
    end

    def artist=(artist)
        @artist = artist
        artist.add_song(self) unless artist.songs.include?(self)
    end

    def artist_name
        if @artist == nil
            return nil
        else
            @artist.name
        end
    end

    def self.all
        @@all
    end


end


# kiki = Song.new("Kiki")
# kiki.artist = drake
# puts kiki.artist