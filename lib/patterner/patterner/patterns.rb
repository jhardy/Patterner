require "patterner/patterner/patterns/checker.rb"
require "patterner/patterner/patterns/crosshatch.rb"
require "patterner/patterner/patterns/diamond.rb"
require "patterner/patterner/patterns/dots.rb"
require "patterner/patterner/patterns/grids.rb"
require "patterner/patterner/patterns/plus.rb"
require "patterner/patterner/patterns/stripes.rb"
require "patterner/patterner/patterns/zigzag.rb"

module Patron
	class Patterns
	  module Sass::Script::Functions
		
		def pattern(style, arg1, arg2 = nil, arg3 = nil, arg4 = nil)
		  
		  style = style.to_s if style.is_a? Sass::Script::String
		  
		  case style
      when "checker"
        checker(arg1, arg2, arg3)
      when "crosshatch"
        crosshatch(arg1, arg2, arg3, arg4)
      when "diamond"
        diamond(arg1, arg2, arg3)
      when "dots"
        dots(arg1, arg2, arg3) 
      when "offset-dots"
        offsetdots(arg1, arg2, arg3) 
      when "grid"
        grid(arg1, arg2)
      when "blueprint"
        blueprint(arg1, arg2)
      when "plus"
        plus(arg1, arg2, arg3)
      when "horizontal-stripe", "h-stripe"
        stripe("h", arg1, arg2, arg3)
      when "vertical-stripe", "v-stripe"
        stripe("v", arg1, arg2, arg3)
      when "forward-stripe", "f-stripe"
        stripe("f", arg1, arg2, arg3)
      when "backward-stripe", "b-stripe"
        stripe("b", arg1, arg2, arg3)
      when "zigzag"
        zigzag(arg1, arg2, arg3, arg4)
      else
        Sass::Tree::WarnNode.new("No pattern named #{style} found")
      end
		  
		  
        
		  	  
	  end
		
	
	
	
	end
	end
end