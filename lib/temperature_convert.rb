#!/usr/bin/env ruby
require 'net/http'
require 'uri'


class TemperatureConvert

	attr_reader :temp, :fahrenheit, :kelvin
	KELVIN = 273.15

	def initialize temp
		@temp = temp
	end

	def convert_to_both(temp)
		@fahrenheit = convert_to_Fahrenheit(temp)
		@kelvin = convert_to_Kelvin(temp)
	end

	def convert_to_Fahrenheit(temp)
		(temp.to_f * 9 / 5 ) + 32
	end

	def convert_to_Kelvin(temp)
		temp.to_f +  KELVIN
	end




end
