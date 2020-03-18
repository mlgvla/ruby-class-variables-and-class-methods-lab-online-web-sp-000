class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)

    @@artists << artist
    @@genres << genre
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre

  end

    def self.count
      @@count
    end

    def self.genres
      @@genres.uniq
    end

    def self.artists
      @@artists.uniq
    end

    def self.genre_count
      unique_genres = @@genres.uniq
      unique_genres.each do |genre|
        genre_count_hash
      end
    end
end
