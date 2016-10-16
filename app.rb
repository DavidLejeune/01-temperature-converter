#!/usr/bin/env ruby
require './lib/temperature_converter.rb'
require './lib/temperature_read.rb'
require './lib/temperature_convert.rb'
require './lib/temperature_output.rb'
#temp_converter = TemperatureConverter.new

puts 'output : read from commandline'
puts ''
TemperatureRead.commandline_temperature ARGV[0]
TemperatureConvert.convert_to_Fahrenheit ARGV[0]
TemperatureConvert.convert_to_Kelvin ARGV[0]
TemperatureOutput.show_output
puts '------------------------------------------------------------------'
