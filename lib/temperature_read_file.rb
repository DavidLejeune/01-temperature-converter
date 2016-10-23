
#!/usr/bin/env ruby
require 'net/http'
require 'uri'
require './lib/temperature_convert.rb'
require './lib/temperature_output.rb'

class TemperatureReadFile


	attr_reader :temp
	KELVIN = 273.15

	def initialize
		@temp = 0
	end

#---------------------------------------------------------------------
#reading


		def self.file_temperature path
			@path = path
			f = File.open(path, "r")
			TemperatureOutput.show_output(TemperatureConvert.convert(f.sysread(6).to_f))
		end


end
