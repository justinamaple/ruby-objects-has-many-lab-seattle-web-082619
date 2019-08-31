class Artist
  attr_reader :songs
  attr_accessor :name
  
  def initialize(name)
    self.name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
  end
  
  def add_song_by_name(song_name)
    @songs << Song.new(song_name)
  end
  
  def count
    @songs.count
  end
end