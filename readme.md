***
# Temperature converter
***

## Description
Ruby app to convert a Celcius temperature , given by 4 different methods , to Fahrenheit and Kelvin from a terminal app.


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
- To show all the above output : `-a`

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
## About
### The app
This app was created for the course Software Engineering @ [Vives Hogeschool Oostende] , class 3PB-ICT
### The author
![sexy boy](https://nl.gravatar.com/userimage/28659207/214a41cfdc1633b1670b1a2bd131142f.jpeg "Witness me ...")
<-- sexy boy


[Vives Hogeschool Oostende]: https://www.vives.be/campus/oostende
