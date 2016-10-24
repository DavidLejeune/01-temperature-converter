#!/usr/bin/env ruby


class TemperatureOutputToHtml


	attr_reader :temp

#---------------------------------------------------------------------
#outputting


		def self.to_html(celcius, fahrenheit, kelvin)
			"<div>\n" +
					"<div>#{celcius} °C</div>\n" +
					"<div>#{fahrenheit} °F</div>\n" +
					"<div>#{kelvin} K</div>\n" +
				"</div>"
		end

	
end
