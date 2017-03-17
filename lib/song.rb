class Song
  def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count += 1
      @@artists << artist
      @@genres << genre
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @genre
  end

  @@count = 0
  @@artists = []
  @@genres = []

  def self.count
    @@count
  end

  def self.artists
    array = []

    @@artists.each do |each_artist|
      if array.index(each_artist) == nil
        array << each_artist
      end
    end

    return array
  end

  def self.genres
    array = []

    @@genres.each do |each_genre|
      if array.index(each_genre) == nil
        array << each_genre
      end
    end

    return array
  end

  def self.genre_count
    array = {}

    @@genres.each do |each_genre|
      if array[each_genre]
        array[each_genre] += 1
      else
        array[each_genre] = 1
      end
    end

    return array
  end

  def self.artist_count
    array = {}

    @@artists.each do |each_artist|
      if array[each_artist]
        array[each_artist] += 1
      else
        array[each_artist] = 1
      end
    end

    return array
  end
end
