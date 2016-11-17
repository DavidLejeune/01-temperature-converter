
#!/usr/bin/env ruby
require 'net/http'
require 'uri'
require './lib/temperature_convert.rb'
require './lib/temperature_output.rb'
require './lib/show_logo.rb'
require 'rubygems'
require 'mqtt'

require 'colorize'
require 'json'

class TemperatureReadTtl


	attr_reader :temp

	def initialize
		@temp = 0
	end

#---------------------------------------------------------------------
#reading

		def self.ttl_temperature
			client = MQTT::Client.new
			client.host = 'staging.thethingsnetwork.org'
			client.port = '1883'
			client.username = '70B3D57ED00012B2'
			client.password = 'c8iuTSccnypK1eoFzEb/OoqB2FVAiFg/aEaYesnNf4w='
			client.connect
			# Thread.new do
			client.get('70B3D57ED00012B2/devices/000000007DD44BFC/up') do |topic,message|
			temp = JSON.parse(message)['fields']['temperature']
			puts temp
			end
			# end

		end


		def self.open_url(url)
			Net::HTTP.get(URI.parse(url))
		end

end
