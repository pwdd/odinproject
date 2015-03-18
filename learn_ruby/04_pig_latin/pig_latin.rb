def translate_word(word)
	first_consonants = []
	case word
		when /^[aeiouyAEIOUY]/ #starts with vowels
			word + "ay"
		when /^(qu+)(.*)/ #starts with 'qu'
			$2 + $1 + "ay"
		when /^([^aeiouyAEIOUY]qu+)(.*)/ #starts with consonant+'qu'
			$2 + $1 + "ay"
		when /^([^aeiouyAEIOUY]+)(.*)/ #starts with non-vowels, use of parenthesis save it to variables $1 and $2
			$2 + $1 + "ay"
		else
			word
	end
end

def translate(phrase)
	array = phrase.split(" ")
	translated_array = []
	array.each do |word|
		translated_array << translate_word(word)		
	end
	translated_array.join(" ")
end
