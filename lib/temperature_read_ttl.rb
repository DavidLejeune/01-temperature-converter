
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
	attr_reader :origin_rb

	def initialize
		@temp = 0
	end

#---------------------------------------------------------------------
#reading

		def self.ttl_temperature origin_rb
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
          sv1 = obj['fields']['temperature']

					countCycles = countCycles + 1
					dev_eui = obj['dev_eui']


					if (origin_rb == "app")
						puts "output : read from ttl".white
						puts "======================\n\n".white
						puts "Cycle   : #{countCycles}".yellow
						puts "dev_eui : #{dev_eui}\n".white
	          TemperatureOutput.show_output(TemperatureConvert.convert("#{sv1}"))
						puts '------------------------------------------------------------------'.yellow
					elsif (origin_rb == "sexy_app")
						ShowLogo.show_intro
						puts "output : read from ttl".white
						puts "======================\n\n".white
	          TemperatureOutput.show_output(TemperatureConvert.convert("#{sv1}"))
						puts "-------------------------------------------------Cycle nr #{countCycles}".yellow
						puts "------------------------------------dev_eui #{dev_eui}".white
					end


        end

      end


		end

		def self.open_url(url)
			Net::HTTP.get(URI.parse(url))
		end

end
