
#!/usr/bin/env ruby
require 'net/http'
require 'uri'


require './lib/temperature_read.rb'
class TemperatureOutput


	attr_reader :temp
	KELVIN = 273.15


	#---------------------------------------------------------------------
	#outputting

	def self.to_text(celcius , fahrenheit, kelvin)
		"Temperature\n" +
			TemperatureRead.celcius.to_s[0,5] + "  °C\n" +
			TemperatureRead.fahrenheit.to_s[0,5] + "  °F\n" +
			TemperatureRead.kelvin.to_s[0,5] + "  K\n"
	end

  def self.to_html(celcius , fahrenheit, kelvin)
		"<div>\n" +
				"<div>" + TemperatureRead.celcius.to_s[0,5] + " °C</div>\n" +
				"<div>" + TemperatureRead.fahrenheit.to_s[0,5] + " °F</div>\n" +
				"<div>" + TemperatureRead.kelvin.to_s[0,5] + " K</div>\n" +
			"</div>"
  end

  def self.to_json(celcius , fahrenheit, kelvin)
		"(celcius: " + TemperatureRead.celcius.to_s[0,5] + ", fahrenheit: " + TemperatureRead.fahrenheit.to_s[0,5] + ", kelvin: " + TemperatureRead.kelvin.to_s[0,5] + ")"
  end

	def self.show_output(celcius , fahrenheit, kelvin)
		puts '>to_text'
		puts to_text(celcius , fahrenheit, kelvin)
		puts ''

			puts '>to_html'
		puts to_html(celcius , fahrenheit, kelvin)
		puts ''

			puts '>to_json'
		puts to_json(celcius , fahrenheit, kelvin)
		puts ''
	end

end
