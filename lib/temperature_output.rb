#!/usr/bin/env ruby

require './lib/temperature_output_to_html.rb'
require './lib/temperature_output_to_json.rb'
require './lib/temperature_output_to_text.rb'

class TemperatureOutput


	attr_reader :temp

#---------------------------------------------------------------------
#outputting

		def self.show_output(converted_temp)


				puts '>to_text'
				puts TemperatureOutputToText.to_text(converted_temp[0], converted_temp[1], converted_temp[2])
				puts ''

				puts '>to_html'
				puts TemperatureOutputToHtml.to_html(converted_temp[0], converted_temp[1], converted_temp[2])
				puts ''


				puts '>to_json'
				puts TemperatureOutputToJson.to_json(converted_temp[0], converted_temp[1], converted_temp[2])
				puts ''


		end


end
