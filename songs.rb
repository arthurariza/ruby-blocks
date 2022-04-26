class Song
  attr_reader :name, :artist, :duration

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def play
    puts "Playing '#{name}' by #{artist} (#{duration} mins)..."
  end
end

class Playlist
  include Enumerable

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def each(&block)
    @songs.each(&block)
  end

  def play_songs
    each(&:play)
  end
end

song1 = Song.new('Numb', 'Linkin Park', 3)
song2 = Song.new('In The End', 'Linkin Park', 3)
song3 = Song.new('Breaking The Habbit', 'Linkin Park', 3)

my_playlist = Playlist.new('Nu Metal')

my_playlist.add_song song1
my_playlist.add_song song2
my_playlist.add_song song3

my_playlist.play_songs

the_songs = my_playlist.select { |song| song.name =~ /The/ }
p the_songs
