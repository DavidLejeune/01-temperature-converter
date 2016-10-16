
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
			show_output(convert(temp))
		end

		def self.file_temperature path
			@path = path
			f = File.open(path, "r")
			show_output(convert(f.sysread(6).to_f))
		end

		def self.url_temperature url
			show_output(convert(open_url(url).to_f))
		end

		def self.open_url(url)
			Net::HTTP.get(URI.parse(url))
		end



#---------------------------------------------------------------------
#converting
	  def self.convert(temp)
			@temp = temp.to_f
	    celcius = temp
	    fahrenheit = (temp.to_f * (9 / 5) ) + 32
	    kelvin = temp.to_f +  KELVIN
	    return celcius, fahrenheit, kelvin
	  end


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
