#!/usr/bin/env ruby

class TemperatureConvertToFahrenheit

	attr_reader :temp
	FAHRENHEIT_OFFSET = 32
	FAHRENHEIT_SLOPE = Rational(9,5)

#---------------------------------------------------------------------
#converting
		 def self.to_fahrenheit(temp)
		 	(temp.to_f * FAHRENHEIT_SLOPE) + FAHRENHEIT_OFFSET
		 end

end
