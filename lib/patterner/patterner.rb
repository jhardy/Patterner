require "rubygems"
require "chunky_png"
require "base64"
require "patterner/patterner/patterns.rb"


module Sass::Script::Functions
	
	
  
  TRANSPARENT = ChunkyPNG::Color::TRANSPARENT
  
  
  def return_image(png)
    
    data  = Base64.encode64(png.to_blob).gsub("\n", "")
    Sass::Script::String.new("url('data:image/png;base64,#{data}')")
    
  end


	
	def get_color(color)
		color = ChunkyPNG::Color.rgba(color.red, color.green, color.blue, (color.alpha*255).round)
	end



    
    
  
end