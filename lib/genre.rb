class Genre 
  attr_accessor :name, :artist, :song 
  @@all = []
  
  def initialize(name, artist="", song="")
    @name = name 
    @aritst = artist 
    @song = song 
    @@all << self 
  end 
  
  def songs 
    Song.all.select do |song|
      song.genre == self
    end 
  end 
  
  def artists
    Artist.all.each do |artist| 
      artist.name
    end 
  end   
  
  def self.all
    @@all
  end 
  
end 