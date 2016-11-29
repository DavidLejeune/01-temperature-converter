#!/usr/bin/env ruby

require 'temperature_read_file.rb'

class TemperatureConverterFile


	attr_reader :temp

	def initialize
		@temp = 0
	end

#---------------------------------------------------------------------
#start converting by reading

		def self.file_temperature path
			TemperatureConvert.convert(TemperatureReadFile.file_temperature (path))
		end


end
