class Enemy
	def initialize(window)
		@radius = 20
		@x = rand(window.width - 2 * @radius) + @radius
		@y = 0
		@image = Gosu::Image.new('images/enemy.png')
	end
end