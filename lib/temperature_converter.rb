#!/usr/bin/env ruby

require './lib/temperature_converter_commandline.rb'
require './lib/temperature_converter_file.rb'
require './lib/temperature_converter_url.rb'
require './lib/temperature_converter_ttl.rb'

class TemperatureConverter


	attr_reader :temp


	def initialize
		@temp = 0
	end

#---------------------------------------------------------------------
#start converting by reading

		def self.commandline_temperature temp
			TemperatureConverterCommandline.commandline_temperature temp
		end

		def self.file_temperature path
			TemperatureConverterFile.file_temperature path
		end

    def self.url_temperature url
      TemperatureConverterUrl.url_temperature url
    end

		def self.ttl_temperature origin_rb
			TemperatureConverterTtl.ttl_temperature origin_rb
		end




end
