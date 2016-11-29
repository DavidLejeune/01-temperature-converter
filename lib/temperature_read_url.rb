
#!/usr/bin/env ruby
require 'net/http'
require 'uri'
require 'temperature_convert.rb'
require 'temperature_output.rb'

class TemperatureReadUrl


	attr_reader :temp

	def initialize
		@temp = 0
	end

#---------------------------------------------------------------------
#reading

		def self.url_temperature url
			open_url(url).to_f
		end

		def self.open_url(url)
			Net::HTTP.get(URI.parse(url))
		end

end
