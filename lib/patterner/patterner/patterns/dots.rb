module Sass::Script::Functions

  def dots(c, size, spacing)
    
    size = 5 if size.nil?
    spacing = 10 if spacing.nil?
    

    size = size.to_i if size.is_a? Sass::Script::Number
    spacing = spacing.to_i if spacing.is_a? Sass::Script::Number
    
    total_size = (size*2)+spacing    
    c = get_color(c)
    	
    total_size = (size*2)+spacing      
    png = ChunkyPNG::Image.new(total_size, total_size, TRANSPARENT)      
    png.circle(size,size, size, TRANSPARENT, c)
    
    return_image(png)
        
  end
  
  def offsetdots(c, size, spacing)
    size = 5 if size.nil?
    spacing = 10 if spacing.nil?

    size = size.to_i if size.is_a? Sass::Script::Number    
    spacing = spacing.to_i if spacing.is_a? Sass::Script::Number

    total_size = (size*4)+spacing
    c = get_color(c)   
    png = ChunkyPNG::Image.new(total_size, total_size, TRANSPARENT)

    png.circle(0, total_size/2, size, TRANSPARENT, c)
    png.circle(total_size, total_size/2, size, TRANSPARENT, c)
    png.circle(total_size/2, 0, size, TRANSPARENT, c)
    png.circle(total_size/2, total_size, size, TRANSPARENT, c)
   

      return_image(png)
    
    
    
  end

end

