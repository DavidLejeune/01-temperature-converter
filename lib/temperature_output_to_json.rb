#!/usr/bin/env ruby


class TemperatureOutputToJson


	attr_reader :temp

#---------------------------------------------------------------------
#outputting


		def self.to_json(celcius, fahrenheit, kelvin)
			"(celcius: #{celcius}, fahrenheit: #{fahrenheit}, kelvin: #{kelvin})"
		end


end
