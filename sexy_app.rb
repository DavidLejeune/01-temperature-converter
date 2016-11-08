#!/usr/bin/env ruby

# for all the sexy colors


require './lib/temperature_converter.rb'
require './lib/show_logo.rb'



cmdl_input = ARGV[0]
file_path = "data.txt"
url_path = "http://labict.be/software-engineering/temperature/api/temperature/fake"

ShowLogo.show_intro
puts "output : read from commandline\n"
puts "==============================\n\n"
TemperatureConverter.commandline_temperature cmdl_input
puts '------------------------------------------------------------------'
sleep(5)

ShowLogo.show_intro
puts "output : read from file"
puts "=======================\n\n"
TemperatureConverter.file_temperature file_path
puts '------------------------------------------------------------------'
sleep(5)

ShowLogo.show_intro
puts "output : read from url\n"
puts "======================\n\n"
TemperatureConverter.url_temperature url_path
puts '----------------------------------------------------task completed'

ShowLogo.show_intro
puts "output : read from ttl\n"
puts "======================\n\n"
TemperatureConverter.ttl_temperature
puts '------------------------------------------------------------------'
