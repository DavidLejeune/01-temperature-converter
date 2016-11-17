
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
			# Subscribe example

						countCycles=0

			      client = MQTT::Client.connect(
			            :host => 'staging.thethingsnetwork.org',
			            :port => '1883',
			            :username => '70B3D57ED00012B2',
			            :password => 'c8iuTSccnypK1eoFzEb/OoqB2FVAiFg/aEaYesnNf4w='
			          ) do |c|
			        # If you pass a block to the get method, then it will loop
			        c.get('#') do |topic,message|
			          obj = JSON.parse("#{message}")
								dev_eui = obj['dev_eui']
			          sv1 = obj['fields']['temperature']
								countCycles = countCycles + 1
			          #puts "#{topic}: #{message}"
			          # another = JSON.parse("#{message}")
			          # temps = another['fields']
			          # read_ttl_temps = temps.select {|temp| temp['temperature'] != ''}
			          # puts read_ttl_temps
			          #
			          # another = JSON.parse("#{read_ttl_temps}")
			          # temps = another['temperature']
			          # read_ttl_temps = temps.select {|temp| temp['temperature'] != ''}
			          #
			          # puts read_ttl_temps
			          # ShowLogo.show_intro
									# puts "output : read from ttl".white
								  # puts "======================\n\n".white
			          TemperatureOutput.show_output(TemperatureConvert.convert("#{sv1}"))
								puts "-------------------------------------------------Cycle nr #{countCycles}".yellow
								puts "------------------------------------dev_eui #{dev_eui}".magenta
								sv1 = obj['fields']['temperature']
								temp = "#{sv1}"
								#client.disconnect()
			        end

			      end

		end


		def self.open_url(url)
			Net::HTTP.get(URI.parse(url))
		end

end
