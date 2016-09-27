#!/usr/bin/env ruby

require './lib/temperature_converter.rb'

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




temp_converter = TemperatureConverter.new

temp_converter.commandline_temperature ARGV[0]
show_intro
temp_converter.show_output
sleep(5)

temp_converter.file_temperature "data.txt"
show_intro
temp_converter.show_output
sleep(5)

temp_converter.url_temperature "http://labict.be/software-engineering/temperature/api/temperature/fake"
show_intro
temp_converter.show_output
sleep(5)
