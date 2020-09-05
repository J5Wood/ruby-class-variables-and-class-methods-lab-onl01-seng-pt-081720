require 'pry'


class Song

  attr_reader :name, :artist, :genre

  @@artists = []
  @@genres = []
  @@count = 0


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end



end
