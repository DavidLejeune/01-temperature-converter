#!/usr/bin/env ruby
require 'net/http'
require 'uri'


class ReadTemperatureConverter

	attr_reader :temp
	KELVIN = 273.15

	def initialize
		@temp = 0
	end

	def commandline_temperature temp
		@temp = temp.to_f
	end

	def open_url(url)
		Net::HTTP.get(URI.parse(url))
	end

	def url_temperature url
		@temp = open_url(url)
	end

	def file_temperature path
		@path = path
		f = File.open(path, "r")
		@temp = f.sysread(6).to_f
	end

end
