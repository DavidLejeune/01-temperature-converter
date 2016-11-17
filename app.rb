#!/usr/bin/env ruby
require './lib/temperature_converter.rb'
require 'colorize'
require 'optparse'


cmdl_input = ARGV[0]
file_path = "data.txt"
url_path = "http://labict.be/software-engineering/temperature/api/temperature/fake"
origin_rb = "app"
# output style 1 = to_text   value 1
# output style 2 = to_html   value 2
# output style 3 = to_json   value 4
# output can be comined (1,3 , 5 ,6 ,7)
$show_output_style = 0


OptionParser.new do |opts|
  opts.banner = "Usage: ruby app.rb [options]"

  opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
    puts v.inspect
  end

  opts.on("-t", "--text", Float , "Show text only") do |t|
      $show_output_style = $show_output_style + 1
  end
  opts.on("-w", "--web", Float , "Show html only") do |t|
      $show_output_style = $show_output_style + 2
  end
  opts.on("-j", "--json", Float , "Show json only") do |t|
      $show_output_style = $show_output_style + 4
  end

  opts.on("-c MYCOMMAND", "--command MYCOMMAND", Float , "Commandline temperature") do |mycommand|
    if ($show_output_style == 0)
      $show_output_style = 7
    end


    puts "output : read from commandline".white
    puts "==============================\n\n".white

    conversion = TemperatureConverterCommandline.commandline_temperature mycommand

    TemperatureOutput.show_output(conversion)

    puts '------------------------------------------------------------------'.yellow
  end




  opts.on("-f [MYFILE]", "--file [MYFILE]", String , "File path") do |myfile|
    if ($show_output_style == 0)
      $show_output_style = 7
    end
    if (myfile.nil?)
        myfile = file_path
    end
    puts "output : read from file".white
    puts "=======================\n\n".white
    TemperatureConverter.file_temperature myfile
    puts '------------------------------------------------------------------'.yellow
  end


  opts.on("-u [MYURL]", "--url [MYURL]", String , "Url path") do |myurl|
    if ($show_output_style == 0)
      $show_output_style = 7
    end
    if (myurl.nil?)
      myurl = url_path
    end
    puts "output : read from url".white
    puts "======================\n\n".white
    TemperatureConverter.url_temperature myurl
    puts '------------------------------------------------------------------'.yellow
  end


  opts.on("-m", "--mqtt" , "MQTT yes or no") do |mymqtt|
    if ($show_output_style == 0)
      $show_output_style = 7
    end
    # output has been taken care of in read_ttl
    #puts "output : read from ttl".white
    #puts "======================\n\n".white
    TemperatureConverter.ttl_temperature origin_rb
    puts '------------------------------------------------------------------'.yellow
  end






end.parse!
