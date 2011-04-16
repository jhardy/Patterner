module Sass::Script::Functions

	def stripe(type, c, size, spacing)
	  
	  size = 1 if size.nil?
	  spacing = 10 if spacing.nil?
  
		size = size.to_i if size.is_a? Sass::Script::Number
		spacing = spacing.to_i if spacing.is_a? Sass::Script::Number
		type = type.to_s if type.is_a? Sass::Script::String
		total_size = (size+spacing) 
		line_color = get_color(c)
		png = ChunkyPNG::Image.new(total_size, total_size, ChunkyPNG::Color::TRANSPARENT)
  
  
	# horizontal stripe    
	if type == "horizontal" || type == "h"
	 for x in (0...total_size)
	   for y in (0...size)
	      png.set_pixel(x, y, line_color)
	    end
	  end
	end
  

	# vertical stripe    
	if type == "vertical" || type == "v"
		for y in (0...total_size)
	     for x in (0...size)
	       png.set_pixel(x, y, line_color)
	     end
	  end
	end
 
	starting_point = size 
	total_points = size

	#Forward Stripe	
	if type == "forward" || type == "f"	
	 for y in (0...total_size) 
		for x in (0...total_size)	 		
			if x < size	 	

				point = starting_point-x

				if point < 0	
	 				point = point + total_size
	 			end

	 			png.set_pixel(point, y, line_color)
 	
	 		end
	  end

			starting_point = starting_point-1  
  
			if starting_point < 0
				starting_point  = total_size-1
	  	end
		end
	end
	
	
	#Backwards Stipe	
	if type == "back" || type == "b"

		for y in (0...total_size) 
			for x in (0...total_size)				
				if x < size
					point = starting_point+x
   	
					if point > total_size-1
						point = point - total_size
					end

					png.set_pixel(point, y, line_color)
		
				end
		 	end

		 	starting_point = starting_point+1

		 	if starting_point > total_size-1
		     starting_point  = 0
		 	end
		end
	end
  
	  return_image(png)

  
	end
end

