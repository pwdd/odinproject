=begin
Create #my_each, a method that is identical to
 #each but (obviously) does not use #each. 
 You'll need to remember the yield statement. 
 Make sure it returns the same thing as #each 
 as well.	
=end

module Enumerable

	def my_each
		for e in self
			yield(e)
		end
		self
	end

	def my_each_with_index
		for i in 0...self.length
			yield(self[i], i)
		end
	end

	def my_select
		selected = []
		self.my_each { |item| selected << item if yield(item)}
		selected
	end
end

hash = Hash.new
%w(cat dog wombat).my_each_with_index {|item, index| hash[item] = index }
print hash   #=> {"cat"=>0, "dog"=>1, "wombat"=>2}

puts

print (1..10).my_select {|i|  i % 3 == 0 }   #=> [3, 6, 9]