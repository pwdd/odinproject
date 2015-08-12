=begin
Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string	
=end

def caesar_cipher(string, number)
	letters = string.split("")
	new_string = []
	index_downcase = Hash[ ('a'..'z').map.with_index(1).to_a ]
	index_uppercase = Hash[ ('A'..'Z').map.with_index(27).to_a ]
	index = index_downcase.merge(index_uppercase)

	letters.each do |l|
		if index_downcase.include? l
			new_string << (index_downcase[l] + number) % 26
		elsif index_uppercase.include? l
			if (index_uppercase[l] + number) > 52
				new_string << (index_uppercase[l] + number) - 26
			else
				new_string << (index_uppercase[l] + number)
			end
		else
			new_string << l
		end
	end

	new_string.map! do |e|
		if e.is_a? Integer
			index.key(e)
		else
			e
		end
	end
	new_string.join("")
end

print caesar_cipher("What a string!", 5)
