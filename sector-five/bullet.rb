class Bullet
	def initialize(window, x, y, angle)
		@x = x
		@y = y
		@direction = angle
		@image = Gosu::Image.new('images/bullet.png')
		@radius = 3
		@window = window
	end
end