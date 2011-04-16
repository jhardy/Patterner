module Sass::Script::Functions

  def grid(c, size)
    size = 25 if size.nil?
		size = size.to_i if size.is_a? Sass::Script::Number
	
		c = get_color(c) 
		
		png = ChunkyPNG::Image.new(size, size, TRANSPARENT)
		
		png.line(size/2, 0, size/2, size, c)
		png.line(0, size/2, size, size/2, c)
		
		return_image(png)
	end
	
	
	def blueprint(c, size)
	  size = 75 if size.nil?
		size = size.to_i if size.is_a? Sass::Script::Number
		c = get_color(c) 
		png = ChunkyPNG::Image.new(size, size, TRANSPARENT)
		
		spacing = size/3
		
		png.rect(size-1, 0, size, size, TRANSPARENT,c)
		png.rect(0, size-1, size, size, TRANSPARENT,c)
		
		for x in (0...spacing)
			png.line(spacing*x, 0, spacing*x, size, c)
			png.line(0, spacing*x, size, spacing*x, c)		
		end
		
			return_image(png)
  	end
  	
  	def grid_overlay(columns, column_width, gutter_width, c = nil)

      columns = columns.to_i            if columns.is_a? Sass::Script::Number
      column_width = column_width.to_i  if column_width.is_a? Sass::Script::Number
      gutter_width = gutter_width.to_i  if gutter_width.is_a? Sass::Script::Number
      grid_width = ((column_width + gutter_width) * columns) - gutter_width


      if c.nil?
          grid_color = ChunkyPNG::Color.rgba(255, 0, 0, 150)     
      else
          grid_color = ChunkyPNG::Color.rgba(c.red, c.green, c.blue, (c.alpha * 255).round)
      end

      png =  ChunkyPNG::Image.new(grid_width, 25, ChunkyPNG::Color::TRANSPARENT)


       for i in (0..columns)
         png.rect((column_width+gutter_width)*i, 0, ((column_width+gutter_width)*i)+column_width, 25, ChunkyPNG::Color::TRANSPARENT, grid_color)

       end

      return_image(png)

    end

end
