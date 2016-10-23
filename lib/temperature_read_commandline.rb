
#!/usr/bin/env ruby
require 'net/http'
require 'uri'
require './lib/temperature_convert.rb'
require './lib/temperature_output.rb'

class TemperatureReadCommandline


	attr_reader :temp
	KELVIN = 273.15

	def initialize
		@temp = 0
	end

#---------------------------------------------------------------------
#reading
		def self.commandline_temperature temp
			TemperatureOutput.show_output(TemperatureConvert.convert(temp))
		end

	

end
