#!/usr/bin/env ruby
require 'net/http'
require 'uri'

require './lib/temperature_convert.rb'

class ShowTemperatureConverter

	attr_reader :temp
	KELVIN = 273.15

	def initialize temp
		@temp = temp
		temp_converter = TemperatureConvert.new
	end


	def to_text
		"Temperature\n" +
			@temp.to_s[0,5] + "  °C\n" +
			temp_converter.fahrenheit.to_s[0,5] + "  °F\n" +
			temp_converter.kelvin.to_s[0,5] + "  K\n"
	end

  def to_html
		"<div>\n" +
				"<div>" + @temp.to_s[0,5] + " °C</div>\n" +
				"<div>" + temp_converter.convert_to_Fahrenheit(@temp).to_s[0,5] + " °F</div>\n" +
				"<div>" + temp_converter.convert_to_Kelvin(@temp).to_s[0,5] + " K</div>\n" +
			"</div>"
  end

  def to_json
		"(celcius: " + @temp.to_s[0,5] + ", fahrenheit: " + temp_converter.convert_to_Fahrenheit(@temp).to_s[0,5] + ", kelvin: " + temp_converter.convert_to_Kelvin(@temp).to_s[0,5] + ")"
  end

	def show_output 
		puts '>to_text'
		puts to_text
		puts ''

			puts '>to_html'
		puts to_html
		puts ''

			puts '>to_json'
		puts to_json
		puts ''
	end

end
