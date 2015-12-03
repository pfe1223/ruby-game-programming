require 'gosu'

class WhackARuby < Gosu::Window
	def initialize
		super(800, 600)
		self.caption = 'Whack a Ruby!'
		@image = Gosu::Image.new('ruby.png')
	end
end

window = WhackARuby.new
window.show