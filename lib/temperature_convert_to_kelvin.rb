#!/usr/bin/env ruby

class TemperatureConvertToKelvin

	attr_reader :temp
	KELVIN = 273.15

#---------------------------------------------------------------------
#converting

		 def self.to_kelvin(temp)
		 	temp.to_f + KELVIN
		 end

end
