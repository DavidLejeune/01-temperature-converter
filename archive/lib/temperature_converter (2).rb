
#!/usr/bin/env ruby
require './lib/temperature_read_commandline.rb'
require './lib/temperature_read_file.rb'
require './lib/temperature_read_url.rb'

class TemperatureConverter


	attr_reader :temp

	def initialize
		@temp = 0
	end

#---------------------------------------------------------------------
#reading
		def self.commandline_temperature temp
			TemperatureReadCommandline.commandline_temperature temp
		end

		def self.file_temperature path
			TemperatureReadFile.file_temperature path
		end

		def self.url_temperature url
			TemperatureReadUrl.url_temperature url
		end

end
