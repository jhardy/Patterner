module Sass::Script::Functions
	
	def crosshatch(c1, size = 1, spacing = 20, c2 = nil)
	  
	  size = 1 if size.nil?
	  spacing = 20 if spacing.nil?
		
		if c2.nil?
			c2 = c1
		end
		
		front = stripe("f", c1, size, spacing)
		back = stripe("b", c2, size, spacing)
		
		Sass::Script::String.new("#{front}, #{back}")
		
	end

end
