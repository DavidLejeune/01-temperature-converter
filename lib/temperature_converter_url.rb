
#!/usr/bin/env ruby
require './lib/temperature_read_url.rb'

class TemperatureConverterUrl


	attr_reader :temp

	def initialize
		@temp = 0
	end

#---------------------------------------------------------------------
#start converting by reading

		def self.url_temperature url
			TemperatureReadUrl.url_temperature url
		end

end
