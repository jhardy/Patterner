module Sass::Script::Functions

  def checker(c1, size, c2 = nil)
    
    size = 20 if size.nil?
    
 		size = size.to_i if size.is_a? Sass::Script::Number

 		c1 = get_color(c1)

 		total_size = (size*2)


 		png = ChunkyPNG::Image.new(total_size, total_size, TRANSPARENT)

 		png.rect(0, 0, size-1, size-1, TRANSPARENT, c1)

 		png.rect(size,size,total_size, total_size, TRANSPARENT, c1)


 		unless c2.nil?
 		  c2 = get_color(c2)
 		  png.rect(size, 0, total_size, size-1, TRANSPARENT, c2)
 		  png.rect(0, size, size-1, total_size, TRANSPARENT, c2)
 		end

 		return_image(png)


   end

end
