#!/usr/bin/env ruby

require './lib/temperature_converter.rb'
require './lib/read_temperature_converter.rb'
require './lib/temperature_convert.rb'

require './lib/show_temperature_converter.rb'

def show_intro
  system "clear"


  #Startup screen
  puts '      ____              __        '
  puts '     / __ \\   ____ _   / /      ___ '
  puts '    / / / /  / __ `/  / /      / _ \\'
  puts '   / /_/ /  / /_/ /  / /___   /  __/'
  puts '  /_____/   \\__,_/  /_____/   \\___/ '
  puts ''
  puts '     +-+-+-+-+ +-+-+-+-+-+-+-+-+'
  puts '     |R|u|b|y| |t|e|r|m|i|n|a|l|'
  puts '     +-+-+-+-+ +-+-+-+-+-+-+-+-+'
  puts ''
  puts ' >> Author : David Lejeune'
  puts ''
  puts ' ###########################################'
  puts ' #             CONVERT CELCIUS             #'
  puts ' ###########################################'
  puts ''
end




temp_reader = ReadTemperatureConverter.new
temp_converter = TemperatureConvert.new
temp_output = ShowTemperatureConverter.new


temp_reader.commandline_temperature ARGV[0]
show_intro
puts 'output : commandline'
puts ''
temp_output.show_output ARGV[0]
sleep(5)

temp_reader.file_temperature "data.txt"
show_intro
puts 'output : file'
puts ''
#temp_converter.show_output
sleep(5)

temp_reader.url_temperature "http://labict.be/software-engineering/temperature/api/temperature/fake"
show_intro
puts 'output : url'
puts ''
#temp_converter.show_output
sleep(5)
