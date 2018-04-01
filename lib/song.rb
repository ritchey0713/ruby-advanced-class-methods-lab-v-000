require 'pry'
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
    song = self.new 
    @@all << song 
    song 
   
  end
  
  def self.new_by_name(song_name)
   song = self.new 
   song.name = song_name
   song
  end 
  
  def self.create_by_name(song_name) 
    song = self.create
    song.name = song_name
    song
  end
  
  def self.find_by_name(song_name)
    self.all.detect {|find| find.name == song_name }
  end 
  
  def self.find_or_create_by_name(song_name) 
    self.find_by_name(song_name) || self.create_by_name(song_name)
  end
  
  def self.alphabetical 
  @@all.sort_by{|word| word.name}
  
end

def self.new_from_filename(filename)
  splitter = filename.split("-")
  artist_name = splitter[0]
-  def self.new_from_filename(filename)	
-    parts = filename.split(" - ")	
-    artist_name = parts[0]	
-    song_name = parts[1].gsub(".mp3", "")	
-	
-    song = self.new	
-    song.name = song_name	
-    song.artist_name = artist_name	
-    song	
-  end
  
  
end















































end
