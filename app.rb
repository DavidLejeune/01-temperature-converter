#!/usr/bin/env ruby
require './lib/temperature_converter.rb'
require './lib/temperature_read.rb'
require './lib/temperature_convert.rb'
#temp_converter = TemperatureConverter.new


cmdl_input = ARGV[0]
file_path = "data.txt"
url_path = "http://labict.be/software-engineering/temperature/api/temperature/fake"

puts "output : read from commandline\n"
TemperatureConverter.commandline_temperature cmdl_input
TemperatureConverter.show_output
puts '------------------------------------------------------------------'


puts "output : read from file"
TemperatureConverter.file_temperature file_path
TemperatureConverter.show_output
puts '------------------------------------------------------------------'

puts "output : read from url\n"
TemperatureConverter.url_temperature url_path
TemperatureConverter.show_output
puts '------------------------------------------------------------------'
