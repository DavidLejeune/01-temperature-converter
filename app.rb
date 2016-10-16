#!/usr/bin/env ruby
require './lib/temperature_read.rb'

cmdl_input = ARGV[0]
file_path = "data.txt"
url_path = "http://labict.be/software-engineering/temperature/api/temperature/fake"

puts "output : read from commandline\n"
TemperatureRead.commandline_temperature cmdl_input
puts '------------------------------------------------------------------'


puts "output : read from file"
TemperatureRead.file_temperature file_path
puts '------------------------------------------------------------------'

puts "output : read from url\n"
TemperatureRead.url_temperature url_path
puts '------------------------------------------------------------------'
