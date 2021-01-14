class Song
    #belongs to 
    #child

    attr_accessor :name
    attr_reader :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist=(artist)
        @artist = artist
        
        artist.add_song(self) unless artist.songs.include?(self)
        #self.artist = artist
    end

    def artist_name
        if @artist == nil
            return nil
        
        else
            return @artist.name
        end
    end



end