require 'pry'

class Artist

	attr_reader :name, :songs, :genres

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
		@genres = []
		@@all << self
	end

	def self.all
		@@all
	end

	def new_song(name, genre)
		a_song = Song.new(name, self, genre)
		@songs << a_song
		@genres << genre
		a_song
		# binding.pry
	end
end