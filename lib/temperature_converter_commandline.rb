
#!/usr/bin/env ruby
require './lib/temperature_read_commandline.rb'

class TemperatureConverterCommandline


	attr_reader :temp

	def initialize
		@temp = 0
	end

#---------------------------------------------------------------------
#start converting by reading

		def self.commandline_temperature temp
			TemperatureReadCommandline.commandline_temperature temp
		end
end
