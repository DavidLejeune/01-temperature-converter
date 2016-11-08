#!/usr/bin/env ruby
require './lib/temperature_converter.rb'

cmdl_input = ARGV[0]
file_path = "data.txt"
url_path = "http://labict.be/software-engineering/temperature/api/temperature/fake"

puts "output : read from commandline\n"
TemperatureConverter.commandline_temperature cmdl_input
puts '------------------------------------------------------------------'


puts "output : read from file"
TemperatureConverter.file_temperature file_path
puts '------------------------------------------------------------------'

puts "output : read from url\n"
TemperatureConverter.url_temperature url_path
puts '------------------------------------------------------------------'


puts "output : read from ttl\n"
TemperatureConverter.ttl_temperature
puts '------------------------------------------------------------------'
