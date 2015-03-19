class Book
	
	def title=(words)
		exceptions = %w{a an and the of in to}
		new_title_array = words.split(" ")
		title = new_title_array.map { |word| exceptions.include?(word) ? word : word.capitalize }
		title[0] = title[0].capitalize
		@title = title.join(" ")
	end

	def title
		@title		
	end

end
