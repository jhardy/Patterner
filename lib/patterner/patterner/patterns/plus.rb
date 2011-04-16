module Sass::Script::Functions

	def plus(c, size, spacing)
	  size = 5 if size.nil?
	  spacing = 10 if spacing.nil?
		size = size.to_i if size.is_a? Sass::Script::Number
		spacing = spacing.to_i if spacing.is_a? Sass::Script::Number
		
		total_size = size+spacing
		
		c = get_color(c)
		
		png = ChunkyPNG::Image.new(total_size, total_size, TRANSPARENT)
		
		size%2 == 0 ? size = size : size = size+1

		
		png.line(size/2, 0, size/2, size, c)
		png.line(0, size/2, size, size/2, c)
		
		return_image(png)
		
		
	end

end
