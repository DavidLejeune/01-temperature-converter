#!/usr/bin/env ruby

require './lib/temperature_converter.rb'

class App

def initialize
  @cmdl_input = ARGV[0]
  @file_path = "data.txt"
  @url_path = "http://labict.be/software-engineering/temperature/api/temperature/fake"

  self.class.show_intro
  puts "output : read from commandline\n"
  App::TemperatureConverter.commandline_temperature @cmdl_input
  puts '------------------------------------------------------------------'
  sleep(5)

  self.class.show_intro
  puts "output : read from file"
  TemperatureConverter.file_temperature @file_path
  puts '------------------------------------------------------------------'
  sleep(5)

  self.class.show_intro
  puts "output : read from url\n"
  TemperatureConverter.url_temperature @url_path
  puts '----------------------------------------------------task completed'

  self.class.show_intro
  puts "output : read from ttl\n"
  TemperatureConverter.ttl_temperature
  puts '------------------------------------------------------------------'

end

def self.show_intro
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



end

App.new
