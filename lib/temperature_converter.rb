
#!/usr/bin/env ruby
require 'net/http'
require 'uri'


class TemperatureConverter


	attr_reader :temp
	KELVIN = 273.15

	def initialize
		@temp = 0
	end



		#---------------------------------------------------------------------
		#reading
	def self.commandline_temperature temp
		@temp = temp.to_f
		#convert_to_both
	end

	def self.open_url(url)
		Net::HTTP.get(URI.parse(url))
	end

	def self.url_temperature url
		@temp = open_url(url)
	end

	def self.file_temperature path
		@path = path
		f = File.open(path, "r")
		@temp = f.sysread(6).to_f

	end






	#---------------------------------------------------------------------
	#converting

	def self.convert_to_Fahrenheit(temp)
		(temp.to_f * 9 / 5 ) + 32
	end

	def self.convert_to_Kelvin(temp)
		temp.to_f +  KELVIN
	end




		#---------------------------------------------------------------------
		#outputting

	def self.to_text
		"Temperature\n" +
			@temp.to_s[0,5] + "  °C\n" +
			convert_to_Fahrenheit(@temp).to_s[0,5] + "  °F\n" +
			convert_to_Kelvin(@temp).to_s[0,5] + "  K\n"
	end

  def self.to_html
		"<div>\n" +
				"<div>" + @temp.to_s[0,5] + " °C</div>\n" +
				"<div>" + convert_to_Fahrenheit(@temp).to_s[0,5] + " °F</div>\n" +
				"<div>" + convert_to_Kelvin(@temp).to_s[0,5] + " K</div>\n" +
			"</div>"
  end

  def self.to_json
		"(celcius: " + @temp.to_s[0,5] + ", fahrenheit: " + convert_to_Fahrenheit(@temp).to_s[0,5] + ", kelvin: " + convert_to_Kelvin(@temp).to_s[0,5] + ")"
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
