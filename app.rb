#!/usr/bin/env ruby

require './lib/temperature_converter.rb'
require 'net/http'
require 'uri'


input = ARGV.first.to_f

temp_converter = TemperatureConverter.new

puts 'output : commandline'
temp_converter.commandline_temperature ARGV[0]
puts temp_converter.to_text
puts temp_converter.to_html
puts temp_converter.to_json
puts ''

puts 'output : file'
temp_converter.file_temperature "data.txt"
puts temp_converter.to_text
puts temp_converter.to_html
puts temp_converter.to_json
puts ''

puts 'output : url'
temp_converter.url_temperature "http://labict.be/software-engineering/temperature/api/temperature/fake"
puts temp_converter.to_text
puts temp_converter.to_html
puts temp_converter.to_json
puts ''
