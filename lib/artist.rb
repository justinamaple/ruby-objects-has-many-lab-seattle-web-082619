class Artist
  attr_accessor :name, :songs
  
  def initialize(name)
    self.name = name
    self.songs = []
  end
  
  def add_song(song)
    song.artist_name = name
    p song
    songs << song
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end
  
  def count
    songs.count
  end
end