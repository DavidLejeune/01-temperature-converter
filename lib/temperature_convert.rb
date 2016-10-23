#!/usr/bin/env ruby

require './lib/temperature_convert_to_celcius.rb'
require './lib/temperature_convert_to_fahrenheit.rb'
require './lib/temperature_convert_to_kelvin.rb'

class TemperatureConvert

	attr_reader :temp
	KELVIN = 273.15
	FAHRENHEIT_OFFSET = 32
	FAHRENHEIT_SLOPE = Rational(9,5)

#---------------------------------------------------------------------
#converting
	  def self.convert(temp)
	    celcius = TemperatureConvertToCelcius.to_celcius(temp)
	    fahrenheit = TemperatureConvertToFahrenheit.to_fahrenheit(temp)
	    kelvin = TemperatureConvertToKelvin.to_kelvin(temp)
	    return celcius, fahrenheit, kelvin
	  end



end
