
#!/usr/bin/env ruby
require 'net/http'
require 'uri'
require './lib/temperature_convert.rb'
require './lib/temperature_output.rb'

class TemperatureReadTtl


	attr_reader :temp

	def initialize
		@temp = 0
	end

#---------------------------------------------------------------------
#reading

		def self.ttl_temperature
                # Subscribe example
                # MQTT::Client.connect('staging.thethingsnetwork.org') do |c|
                #   # If you pass a block to the get method, then it will loop
                #   c.get(TOPIC) do |topic,message|
                #     puts "#{topic}: #{message}"
                #   end
                # end
			    TemperatureOutput.show_output(TemperatureConvert.convert(25))
		end

		def self.open_url(url)
			Net::HTTP.get(URI.parse(url))
		end

end
