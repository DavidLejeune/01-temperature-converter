#!/usr/bin/env ruby

# for all the sexy colors don't forget this : !!!!!!!!!!!!!!!!
# gem install colorize

require './lib/temperature_converter.rb'
require './lib/show_logo.rb'
require 'colorize'


cmdl_input = ARGV[0]
file_path = "data.txt"
url_path = "http://labict.be/software-engineering/temperature/api/temperature/fake"

origin_rb = "sexy_app"

ShowLogo.show_intro
puts "output : read from commandline".white
puts "==============================\n\n".white
TemperatureConverter.commandline_temperature cmdl_input
puts '------------------------------------------------------------------'.yellow
sleep(5)

ShowLogo.show_intro
puts "output : read from file".white
puts "=======================\n\n".white
TemperatureConverter.file_temperature file_path
puts '------------------------------------------------------------------'.yellow
sleep(5)

ShowLogo.show_intro
puts "output : read from url".white
puts "======================\n\n".white
TemperatureConverter.url_temperature url_path
puts '----------------------------------------------------task completed'.yellow

ShowLogo.show_intro
puts "output : read from ttl".white
puts "======================\n\n".white
TemperatureConverter.ttl_temperature origin_rb
puts '------------------------------------------------------------------'.yellow
