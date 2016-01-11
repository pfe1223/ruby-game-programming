require 'gosu'
require_relative 'player'

class SectorFive < Gosu::Window
	def initialize
		super(800, 600)
		self.caption = 'Sector Five'
		@player = Player.new(self)
	end
	
	def draw
		@player.draw
	end
	
	def update
		@player.turnLeft if button_down?(Gosu::KbLeft)
		@player.turnRight if button_down?(Gosu::KbRight)
	end
end

window = SectorFive.new
window.show