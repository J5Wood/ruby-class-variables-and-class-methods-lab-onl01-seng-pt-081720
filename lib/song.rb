class Song

  attr_reader :name, :artist, :genre

  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << @genre
  end




end
