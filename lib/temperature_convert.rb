#!/usr/bin/env ruby

class TemperatureConvert

	attr_reader :temp
	KELVIN = 273.15
	FAHRENHEIT_OFFSET = 32
	FAHRENHEIT_SLOPE = Rational(9,5)

#---------------------------------------------------------------------
#converting
	  def self.convert(temp)
	    celcius = to_celcius(temp)
	    fahrenheit = to_fahrenheit(temp)
	    kelvin = to_kelvin(temp)
	    return celcius, fahrenheit, kelvin
	  end

		 def self.to_celcius(temp)
		 	temp
		 end

		 def self.to_fahrenheit(temp)
		 	(temp.to_f * FAHRENHEIT_SLOPE) + FAHRENHEIT_OFFSET
		 end

		 def self.to_kelvin(temp)
		 	temp.to_f + KELVIN
		 end

end
