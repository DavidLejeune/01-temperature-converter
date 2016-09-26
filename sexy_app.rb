#!/usr/bin/env ruby

require './lib/temperature_converter.rb'
require 'net/http'
require 'uri'

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



input = ARGV.first.to_f

temp_converter = TemperatureConverter.new

temp_converter.commandline_temperature ARGV[0]
show_intro
puts 'output : commandline_temperature'
puts ''
puts '>>convert to text'
puts temp_converter.to_text
puts ''
puts '>>convert to html'
puts temp_converter.to_html
puts ''
puts '>>convert to json'
puts temp_converter.to_json
puts ''
sleep(5)

temp_converter.file_temperature "data.txt"
show_intro
puts 'output : file_temperature'
puts ''
puts '>>convert to text'
puts temp_converter.to_text
puts ''
puts '>>convert to html'
puts temp_converter.to_html
puts ''
puts '>>convert to json'
puts temp_converter.to_json
puts ''
sleep(5)

temp_converter.url_temperature "http://labict.be/software-engineering/temperature/api/temperature/fake"
show_intro
puts 'output : url_temperature'
puts ''
puts '>>convert to text'
puts temp_converter.to_text
puts ''
puts '>>convert to html'
puts temp_converter.to_html
puts ''
puts '>>convert to json'
puts temp_converter.to_json
puts ''
sleep(5)
