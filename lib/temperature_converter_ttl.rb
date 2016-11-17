
#!/usr/bin/env ruby
require './lib/temperature_read_ttl.rb'

class TemperatureConverterTtl


	attr_reader :temp

	def initialize
		@temp = 0
	end

#---------------------------------------------------------------------
#start converting by reading

		def self.ttl_temperature
			TemperatureConvert.convert(TemperatureReadTtl.ttl_temperature)
		end

end
