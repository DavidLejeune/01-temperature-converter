#!/usr/bin/env ruby



class TemperatureConvert

	attr_reader :temp
	KELVIN = 273.15

#---------------------------------------------------------------------
#converting
	  def self.convert(temp)
	    celcius = temp
	    fahrenheit = (temp.to_f * (9 / 5) ) + 32
	    kelvin = temp.to_f +  KELVIN
	    return celcius, fahrenheit, kelvin
	  end

end
