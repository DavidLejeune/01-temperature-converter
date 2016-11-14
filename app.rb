#!/usr/bin/env ruby
require './lib/temperature_converter.rb'
require 'colorize'

cmdl_input = ARGV[0]
file_path = "data.txt"
url_path = "http://labict.be/software-engineering/temperature/api/temperature/fake"

origin_rb = "app"

puts "output : read from commandline".white
puts "==============================\n\n".white
TemperatureConverter.commandline_temperature cmdl_input
puts '------------------------------------------------------------------'.yellow


puts "output : read from file".white
puts "=======================\n\n".white
TemperatureConverter.file_temperature file_path
puts '------------------------------------------------------------------'.yellow

puts "output : read from url".white
puts "======================\n\n".white
TemperatureConverter.url_temperature url_path
puts '------------------------------------------------------------------'.yellow


puts "output : read from ttl".white
puts "======================\n\n".white
TemperatureConverter.ttl_temperature origin_rb
puts '------------------------------------------------------------------'.yellow
