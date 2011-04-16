module Sass::Script::Functions
	
	def zigzag(c, size, width, spacing)
	    size = 20 if size.nil?
	    width = 20 if width.nil?
	    spacing = 0 if spacing.nil?
			size = size.to_i if size.is_a? Sass::Script::Number
			width = width.to_i if width.is_a? Sass::Script::Number
			spacing = spacing.to_i if spacing.is_a? Sass::Script::Number
			
			height = size+width
			
			c = get_color(c)
			
			point = 0
			
			spacing = spacing + height
			
			left = ChunkyPNG::Image.new(width, height, TRANSPARENT)
			right = ChunkyPNG::Image.new(width, height, TRANSPARENT)
			png =  ChunkyPNG::Image.new(width*2, spacing, TRANSPARENT)
			
			for x in (0...width)
				for y in (0...size)
					left.set_pixel(x, y+point, c)
				end
				
				point = point+1
				
			end 
			
			right = right.compose(left, 0, 0)
			right = right.flip_vertically
			png = png.compose(left, 0, 0)
			png = png.compose(right,width,0)
			
			return_image(png)
			
		end
	
end
