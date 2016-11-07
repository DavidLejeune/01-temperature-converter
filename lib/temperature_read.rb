
#!/usr/bin/env ruby
require 'net/http'
require 'uri'
require './lib/temperature_convert.rb'
require './lib/temperature_output.rb'

class TemperatureRead


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

		def self.file_temperature path
			@path = path
			f = File.open(path, "r")
			TemperatureOutput.show_output(TemperatureConvert.convert(f.sysread(6).to_f))
		end

		def self.url_temperature url
			TemperatureOutput.show_output(TemperatureConvert.convert(open_url(url).to_f))
		end

		def self.open_url(url)
			Net::HTTP.get(URI.parse(url))
		end

end
