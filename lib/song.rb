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
    @@genres.each do |x|
        if new_hash.include?(x)
          counter = new_hash[x]
          counter +=1
          new_hash[x] = counter
        else
          new_hash[x] = 1
        end
      end
      new_hash
    end



end
