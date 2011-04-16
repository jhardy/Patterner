module Sass::Script::Functions

	def diamond(c, height = 25, width = 35)
	  
	  height = 25 if height.nil?
	  width = 35 if width.nil?
	  
		height = height.to_i if height.is_a? Sass::Script::Number
		width = width.to_i if width.is_a? Sass::Script::Number
		
		c =  get_color(c)
		
		top = ChunkyPNG::Image.new(width, height, TRANSPARENT)
		bottom = ChunkyPNG::Image.new(width, height, TRANSPARENT)
		png = ChunkyPNG::Image.new(width, (height*2), TRANSPARENT)
		
		

		top.polygon([width/2,-1,0,height,width,height], TRANSPARENT, c)
		bottom = bottom.compose(top, 0, 0)
		bottom = bottom.flip_horizontally 
		png = png.compose(top, 0, 0)
		png = png.compose(bottom, 0, height)
		
		return_image(png)
		
	end
  
end
