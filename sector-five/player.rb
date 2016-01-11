class Player
	def initialize(window)
		@x = 200
		@y = 200
		@angle = 0
		@image = Gosu::Image.new('images/ship.png')
	end
	
	def draw
		@image.draw_rot(@x, @y, 1, @angle)
	end
	
	def turnRight
		@angle += 3
	end
	
	def turnLeft
		@angle -= 3
	end
	
	def update
		@player.turnLeft if button_down?(Gosu::KbLeft)
		@plaer.turnRight if button_down?(Gosu::KbRight)
	end
end