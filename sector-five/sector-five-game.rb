require 'gosu'
require_relative 'player'
require_relative 'enemy'
require_relative 'bullet'

class SectorFive < Gosu::Window
	WIDTH = 800
	HEIGHT = 600
	ENEMY_FREQUENCY = 0.05
	
	def initialize
		super(WIDTH, HEIGHT)
		self.caption = 'Sector Five'
		@player = Player.new(self)
		@enemies = []
		@bullets = []
	end
	
	def draw
		@player.draw
		@enemies.each do |enemy|
			enemy.draw
		end
	end
	
	def update
		@player.turnLeft if button_down?(Gosu::KbLeft)
		@player.turnRight if button_down?(Gosu::KbRight)
		@player.accelerate if button_down?(Gosu::KbUp)
		@player.move
		if rand < ENEMY_FREQUENCY
			@enemies.push Enemy.new(self)
		end
		@enemies.each do |enemy|
			enemy.move
		end
		@bullets.each do |bullet|
			bullet.move
		end
	end
end

window = SectorFive.new
window.show