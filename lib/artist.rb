class Artist
    attr_accessor :name

    @@song_count = 0

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        @songs << song
        song.artist = self
        @@song_count +=1
    end

    def songs
        @songs
    end

    def add_song_by_name(name)
        song = Song.new(name)
        @songs << song
        song.artist = self
        @@song_count +=1
    end

    def self.song_count
        @@song_count
    end

end

# drake = Artist.new("Drake")

# puts drake

# describe "#songs" do
#       it "has many songs" do
#         expect(adele.songs).to be_a(Array)
#         hello = Song.new("Hello")
#         hello.artist = adele
#         hotline_bling = Song.new("Hotline Bling")
#         hotline_bling.artist = drake
#         expect(adele.songs).to eq([hello])
#       end
#     end