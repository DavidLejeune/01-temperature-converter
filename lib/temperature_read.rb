
#!/usr/bin/env ruby
require 'net/http'
require 'uri'

require './lib/temperature_convert.rb'
require './lib/temperature_output.rb'


class TemperatureRead


	attr_reader :temp

	def initialize
		@temp = 0
	end



		#---------------------------------------------------------------------
		#reading
	def self.commandline_temperature temp
		@temp = temp.to_f
		celcius = temp
		fahrenheit = TemperatureConvert.convert_to_Fahrenheit(temp)
		kelvin = TemperatureConvert.convert_to_Kelvin(temp)
		TemperatureOutput.show_output(celcius , fahrenheit, kelvin)
	end

	def self.open_url(url)
		Net::HTTP.get(URI.parse(url))
	end

	def self.url_temperature url
		@temp = open_url(url)
	end

	def self.file_temperature path
		@path = path
		f = File.open(path, "r")
		@temp = f.sysread(6).to_f

	end



end
