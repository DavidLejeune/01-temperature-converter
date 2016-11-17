class TemperatureConverter

	attr_reader :temp
	KELVIN = 273.15
	FAHRENHEIT_OFFSET = 32
	FAHRENHEIT_SLOPE = Rational(9,5)

	def initialize temp
		@temp = temp
	end

		def to_celcius
			temp
		end

		def to_fahrenheit
			(temp * FAHRENHEIT_SLOPE) + FAHRENHEIT_OFFSET
		end

		def to_kelvin
			temp + KELVIN
		end

end