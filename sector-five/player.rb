class Player
	ROTATION_SPEED = 3
	ACCELERATION = 2
	FRICTION = 0.9
	
	def initialize(window)
		@x = 200
		@y = 200
		@angle = 0
		@image = Gosu::Image.new('images/ship.png')
		@velocity_x = 0
		@velocity_y = 0
	end
	
	def draw
		@image.draw_rot(@x, @y, 1, @angle)
	end
	
	def turnRight
		@angle += ROTATION_SPEED
	end
	
	def turnLeft
		@angle -= ROTATION_SPEED
	end
	
	def move
		@x += @velocity_x
		@y += @velocity_y
		@velocity_x *= FRICTION
		@velocity_y *= FRICTION
	end
	
	def accelerate
		@velocity_x += Gosu.offset_x(@angle, ACCELERATION)
		@velocity_y += Gosu.offset_y(@angle, ACCELERATION)
	end
end