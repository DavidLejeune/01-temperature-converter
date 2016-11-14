
#!/usr/bin/env ruby
require './lib/temperature_read_ttl.rb'

class TemperatureConverterTtl


	attr_reader :temp
	attr_reader :origin_rb

	def initialize
		@temp = 0
	end

#---------------------------------------------------------------------
#start converting by reading

		def self.ttl_temperature origin_rb
			TemperatureReadTtl.ttl_temperature origin_rb
		end

end
