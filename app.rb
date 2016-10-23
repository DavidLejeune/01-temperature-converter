#!/usr/bin/env ruby
require './lib/temperature_read_commandline.rb'
require './lib/temperature_read_file.rb'
require './lib/temperature_read_url.rb'

cmdl_input = ARGV[0]
file_path = "data.txt"
url_path = "http://labict.be/software-engineering/temperature/api/temperature/fake"

puts "output : read from commandline\n"
TemperatureReadCommandline.commandline_temperature cmdl_input
puts '------------------------------------------------------------------'


puts "output : read from file"
TemperatureReadFile.file_temperature file_path
puts '------------------------------------------------------------------'

puts "output : read from url\n"
TemperatureReadUrl.url_temperature url_path
puts '------------------------------------------------------------------'
