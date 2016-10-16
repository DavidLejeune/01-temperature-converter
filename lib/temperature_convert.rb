
#!/usr/bin/env ruby
require 'net/http'
require 'uri'

class TemperatureConvert


	attr_reader :temp
	KELVIN = 273.15




	#---------------------------------------------------------------------
	#converting

	def self.convert_to_Fahrenheit(temp)
		(temp.to_f * 9 / 5 ) + 32
	end

	def self.convert_to_Kelvin(temp)
		temp.to_f +  KELVIN
	end



end
