class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.group_by { |artist| artist}.transform_values { |values| values.count }
    end

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << genre
        @@artists << artist
    end

end