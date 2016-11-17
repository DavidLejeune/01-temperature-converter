
#!/usr/bin/env ruby
require './lib/temperature_convert.rb'
require './lib/temperature_output.rb'

class TemperatureReadFile


	attr_reader :temp

	def initialize
		@temp = 0
	end

#---------------------------------------------------------------------
#reading


		def self.file_temperature path
			@path = path
			f = File.open(path, "r")
			temp = f.sysread(6).to_f
		end


end
