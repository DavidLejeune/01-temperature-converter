
#!/usr/bin/env ruby
require 'net/http'
require 'uri'

require './temperature_convert.rb'

class TemperatureOutput


	attr_reader :temp


		def initialize
			@temp = TemperatureRead.temp
		end
	#---------------------------------------------------------------------
	#outputting

	def self.to_text
		"Temperature\n" +
			@temp.to_s[0,5] + "  °C\n" +
			TemperatureConvert.convert_to_Fahrenheit(@temp).to_s[0,5] + "  °F\n" +
			TemperatureConvert.convert_to_Kelvin(@temp).to_s[0,5] + "  K\n"
	end

  def self.to_html
		"<div>\n" +
				"<div>" + @temp.to_s[0,5] + " °C</div>\n" +
				"<div>" + TemperatureConvert.convert_to_Fahrenheit(@temp).to_s[0,5] + " °F</div>\n" +
				"<div>" + TemperatureConvert.convert_to_Kelvin(@temp).to_s[0,5] + " K</div>\n" +
			"</div>"
  end

  def self.to_json
		"(celcius: " + @temp.to_s[0,5] + ", fahrenheit: " + TemperatureConvert.convert_to_Fahrenheit(@temp).to_s[0,5] + ", kelvin: " + TemperatureConvert.convert_to_Kelvin(@temp).to_s[0,5] + ")"
  end

	def self.show_output
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
