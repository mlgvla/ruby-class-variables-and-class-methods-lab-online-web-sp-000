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
      unique_genres = genres
      new_hash = {}
      unique_genres.each do |g|
        new_hash[g] = @@genres.count(g)
      end
      return new_hash
    end
end
