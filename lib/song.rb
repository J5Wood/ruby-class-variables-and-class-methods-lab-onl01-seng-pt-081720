require 'pry'


class Song

  attr_reader :name, :artist, :genre

  @@artists = []
  @@genres = []
  @@count = 0


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << @genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    new_hash = {}
    @@genres.each { |genre| new_hash[genre] += 1 }
  end

end
