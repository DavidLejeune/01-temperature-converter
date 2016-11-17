#!/usr/bin/env ruby

require './lib/temperature_converter_commandline.rb'

class TemperatureConverter


	attr_reader :temp
	attr_reader :origin_rb

	def initialize
		@temp = 0
	end

#---------------------------------------------------------------------
#start converting by reading

		def self.commandline_temperature temp
			TemperatureConverterCommandline.commandline_temperature temp
		end






end
