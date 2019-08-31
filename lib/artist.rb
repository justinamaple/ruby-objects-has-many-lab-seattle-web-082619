class Artist
  attr_reader :songs
  attr_accessor :name
  
  def initialize(name)
    self.name = name
    @songs = []
  end
  
  def add_song(song)
    song.artist_name = name
    self.songs << song
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end
  
  def count
    @songs.count
  end
end