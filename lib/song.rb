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
  def self.new_by_name
    song = Song.new_by_name
  end
  def self.create_by_name
    song = Song.create_by_name
    song
  end

end
