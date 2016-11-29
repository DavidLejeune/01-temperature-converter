***
# Temperature converter
***

## Description
Ruby to to convert a Celcius temperature , given by 4 different methods , to Fahrenheit and Kelvin from a terminal app.


There a 4 different ways to give/get a Celcius value to be converted :
- a commandline argument
- from a textfile
- from a url
- from TTN using MQTT protocol

Each of these conversions can be outputted in 4 different ways :
- a simple text output
- a JSON String
- a html block
- all of the above options together

***

## Install
Use the following command to instal via ruby Gem
```ruby
gem install temperature_converter_DaLe
```
***
### Example Usage
All temperature conversions need at least 1 output option !
- To show the text output only : `-t`
- To show the JSON output only : `-j`
- To show the HTML output only : `-w`
- To show the all output       : `-a`

#### Commandline temperature
```Powershell
temp-conv -c 25 -w
```
This will output :
```Powershell
output : read from commandline
==============================


>to_html
<div>
<div>25.0 °C</div>
<div>77.0 °F</div>
<div>298.15 K</div>
</div>

------------------------------------------------------------------
```

#### Url temperature
After the `-u` enter either a valid url or nothing (this will use the default url of the program)
```Powershell
temp-conv -u -t
```
This will output :
```Powershell
output : read from url
======================


>to_text
Temperature
21.3  °C
70.34 °F
294.45  K

------------------------------------------------------------------
```

#### File temperature
After the `-f` enter either a valid file path or nothing (this will use the default file path of the program)
```Powershell
temp-conv -f -j
```
This will output :
```Powershell
output : read from file
=======================


>to_json
(celcius: 66.6, fahrenheit: 151.88, kelvin: 339.75)

------------------------------------------------------------------
```

#### TTN temperature (The Things Network)
This will use the MQTT protocol to get a temperature from The Things Network
```Powershell
temp-conv -m -a
```
This will output :
```Powershell
output : read from ttn
======================


>to_text
Temperature
26.16  °C
79.088 °F
299.31  K

>to_html
<div>
<div>26.16 °C</div>
<div>79.088 °F</div>
<div>299.31 K</div>
</div>

>to_json
(celcius: 26.16, fahrenheit: 79.088, kelvin: 299.31)

------------------------------------------------------------------
```
***
What your project does
How to install it
Example usage
How to set up the dev environment
How to ship a change
Change log
License and author info
