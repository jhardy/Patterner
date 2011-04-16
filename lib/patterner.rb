require 'compass'
require File.join(File.dirname(__FILE__), 'patterner', 'patterner')
extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))

Compass::Frameworks.register('patterner', :path => extension_path)