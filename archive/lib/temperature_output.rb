#!/usr/bin/env ruby


class TemperatureOutput


	attr_reader :temp

#---------------------------------------------------------------------
#outputting

		def self.to_text(celcius, fahrenheit, kelvin)
			"Temperature\n" +
				"#{celcius}  °C\n" +
				"#{fahrenheit} °F\n" +
				"#{kelvin}  K\n"
		end

		def self.to_html(celcius, fahrenheit, kelvin)
			"<div>\n" +
					"<div>#{celcius} °C</div>\n" +
					"<div>#{fahrenheit} °F</div>\n" +
					"<div>#{kelvin} K</div>\n" +
				"</div>"
		end

		def self.to_json(celcius, fahrenheit, kelvin)
			"(celcius: #{celcius}, fahrenheit: #{fahrenheit}, kelvin: #{kelvin})"
		end

		def self.show_output(converted_temp)
			puts '>to_text'
			puts to_text(converted_temp[0], converted_temp[1], converted_temp[2])
			puts ''

			puts '>to_html'
			puts to_html(converted_temp[0], converted_temp[1], converted_temp[2])
			puts ''

			puts '>to_json'
			puts to_json(converted_temp[0], converted_temp[1], converted_temp[2])
			puts ''
		end

end
