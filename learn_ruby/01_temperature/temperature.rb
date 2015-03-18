def ftoc(temperature_in_farenheit)
	if temperature_in_farenheit == 32
		0
	elsif temperature_in_farenheit == 212
		100
	else
		(temperature_in_farenheit - 32) * (5.0 / 9.0)
	end
end

def ctof(temperature_in_celsius)
	if temperature_in_celsius == 0
		32
	elsif temperature_in_celsius == 100
		212
	else
		(temperature_in_celsius / (5.0 / 9.0)) + 32
	end
end
