
#!/usr/bin/env ruby
require 'temperature_read_url.rb'

class TemperatureConverterUrl


	attr_reader :temp

	def initialize
		@temp = 0
	end

#---------------------------------------------------------------------
#start converting by reading

		def self.url_temperature url
			TemperatureConvert.convert(TemperatureReadUrl.url_temperature (url))
		end

end
