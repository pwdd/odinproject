=begin
Implement a method #substrings that takes a word as the first argument and then an array of valid substrings 
(your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) 
that was found in the original string and how many times it was found.
=end

def substrings(string, dictionary)
	result = Hash.new(0)
	arr = string.downcase.split(" ")
	arr.each do |word|
		dictionary.each do |sub|
			result[sub] += 1 if word[sub]
		end
	end
	result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

print substrings("Howdy partner, sit down! How's it going?", dictionary)
print substrings("below", dictionary)



