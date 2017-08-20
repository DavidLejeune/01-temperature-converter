#!/usr/bin/env ruby

class TemperatureConvert

	attr_reader :temp
	KELVIN = 273.15
	FAHRENHEIT_OFFSET = 32
	FAHRENHEIT_SLOPE = Rational(9,5)

#---------------------------------------------------------------------
#converting
	  def self.convert(temp)
	    celcius = temp
	    fahrenheit = (temp.to_f * (9 / 5) ) + 32
			#fahrenheit = to_fahrenheit(temp)
	    kelvin = temp.to_f +  KELVIN
			#kelvin = to_fahrenheit(temp)
	    return celcius, fahrenheit, kelvin
	  end

		# def self.to_celcius(temp)
		# 	celcius = temp
		# end
		#
		# def self.to_fahrenheit(temp)
		# 	(to_celcius * FAHRENHEIT_SLOPE) + FAHRENHEIT_OFFSET
		# end
		#
		# def self.to_kelvin(temp)
		# 	to_celcius + KELVIN
		# end

end
