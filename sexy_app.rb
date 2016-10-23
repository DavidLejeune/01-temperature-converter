#!/usr/bin/env ruby

require './lib/temperature_read_commandline.rb'
require './lib/temperature_read_file.rb'
require './lib/temperature_read_url.rb'


cmdl_input = ARGV[0]
file_path = "data.txt"
url_path = "http://labict.be/software-engineering/temperature/api/temperature/fake"


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


show_intro
puts "output : read from commandline\n"
TemperatureReadCommandline.commandline_temperature cmdl_input
puts '------------------------------------------------------------------'
sleep(5)

show_intro
puts "output : read from file"
TemperatureReadFile.file_temperature file_path
puts '------------------------------------------------------------------'
sleep(5)

show_intro
puts "output : read from url\n"
TemperatureReadUrl.url_temperature url_path
puts '----------------------------------------------------task completed'
