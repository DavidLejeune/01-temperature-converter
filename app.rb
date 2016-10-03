#!/usr/bin/env ruby

require './lib/temperature_converter.rb'

temp_converter = TemperatureConverter.new

puts 'output : commandline'
puts ''
temp_converter.commandline_temperature ARGV[0]
temp_converter.show_output
puts '------------------------------------------------------------------'


puts 'output : file'
puts ''
temp_converter.file_temperature "data.txt"
temp_converter.show_output
puts '------------------------------------------------------------------'

puts 'output : url'
puts ''
temp_converter.url_temperature "http://labict.be/software-engineering/temperature/api/temperature/fake"
temp_converter.show_output
puts '------------------------------------------------------------------'
