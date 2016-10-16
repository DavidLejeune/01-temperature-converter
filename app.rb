#!/usr/bin/env ruby
require './lib/temperature_converter.rb'
#temp_converter = TemperatureConverter.new

puts 'output : commandline'
puts ''
TemperatureConverter.commandline_temperature ARGV[0]
TemperatureConverter.show_output
puts '------------------------------------------------------------------'


puts 'output : file'
puts ''
TemperatureConverter.file_temperature "data.txt"
TemperatureConverter.show_output
puts '------------------------------------------------------------------'

puts 'output : url'
puts ''
TemperatureConverter.url_temperature "http://labict.be/software-engineering/temperature/api/temperature/fake"
TemperatureConverter.show_output
puts '------------------------------------------------------------------'
