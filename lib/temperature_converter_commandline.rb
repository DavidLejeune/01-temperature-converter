
#!/usr/bin/env ruby
require 'temperature_read_commandline.rb'

class TemperatureConverterCommandline


	attr_reader :temp

	def initialize
		@temp = 0
	end

#---------------------------------------------------------------------
#start converting by reading

		def self.commandline_temperature temp
			TemperatureConvert.convert(TemperatureReadCommandline.commandline_temperature (temp))
		end
end
