class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    song.save
    song
  end
  def self.new_by_name(song_name)
    song = Song.new
    song.name = song_name
    song
  end
  def self.create_by_name(song_name)
    song = Song.create
    song.name = song_name
    @@all << song
  end

  def find_by_name(song_name)
    self.find_by_name(|name| song_name == name)
    return name
  end

end
