
#!/usr/bin/env ruby
require 'net/http'
require 'uri'
require './lib/temperature_convert.rb'
require './lib/temperature_output.rb'

class TemperatureReadCommandline


	attr_reader :temp

	def initialize
		@temp = 0
	end

#---------------------------------------------------------------------
#reading
		def self.commandline_temperature temp
			temp = temp
			puts "read"
			puts temp
			temp
		end



end
