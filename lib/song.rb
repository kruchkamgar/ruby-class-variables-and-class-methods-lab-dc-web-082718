require 'pry'

class Song

attr_reader :name, :artist, :genre, :count, :artists, :genres, :artist_count, :genre_count

@@artists = []
@@genres = []
@@count = 0
@@artist_count = 0
@@genre_count = {}


  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    counter

    # if !@@artists.include? (artist) then
      @@artists << artist
    # end
    # if !@@genres.include? (genre) then
       @@genres << genre
      # end
# binding.pry
  end

  def counter
    # binding.pry
    # @@genre_count = @@genres.uniq.length
    # @@artist_count = @@artists.uniq.length
    @@count += 1
    return
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
    @@genres.each { |genre|
      @@genre_count[genre] = @@genres.count(genre)
    }
    @@genre_count
  end
  def self.artist_count
    @@artists.each { |artist|
      @@artist_count[artist] = @@artists.count(artist)
    }
    @@artist_count
  end
# class << self
#    attr_accessor :class_variables
#  end
  # def count
  #   @@count
  # end


end
