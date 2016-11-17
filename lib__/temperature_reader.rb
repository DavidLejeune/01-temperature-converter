require 'net/http'
require 'uri'
require './lib/temperature_printer.rb'
require 'rubygems'
require 'mqtt'
require 'json'

class TemperatureReader


	attr_reader :temp

	def initialize
		@temp = 0
	end

		def cmdline_temperature temp
			TemperaturePrinter.print(temp.to_f)
		end

		def file_temperature path
			@path = path
			temp = File.read(path).to_f
			TemperaturePrinter.print(temp)
		end

		def url_temperature url
			temp = Net::HTTP.get(URI.parse(url)).to_f
			TemperaturePrinter.print(temp)
		end

		def open_url(url)
			Net::HTTP.get(URI.parse(url))
		end

		def ttn_reader (ttn_host, port, username, password, sensor_id)
			# Subscribe example
			MQTT::Client.connect(
			:host => ttn_host,
			:port => port,
			:username => username,
			:password => password) do |c|
			  # If you pass a block to the get method, then it will loop
			  c.get(sensor_id) do |topic,message|
							obj = JSON.parse("#{message}")
							temp = obj['fields']['temperature'].to_f
							TemperaturePrinter.print(temp)
							puts '.....................................................................'
			  end
			end
		end

end