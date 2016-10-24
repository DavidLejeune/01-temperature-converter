#!/usr/bin/env ruby


class TemperatureOutputToText


	attr_reader :temp

#---------------------------------------------------------------------
#outputting

		def self.to_text(celcius, fahrenheit, kelvin)
			"Temperature\n" +
				"#{celcius}  °C\n" +
				"#{fahrenheit} °F\n" +
				"#{kelvin}  K\n"
		end

end
