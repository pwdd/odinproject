=begin
Create #my_each, a method that is identical to
 #each but (obviously) does not use #each. 
 You'll need to remember the yield statement. 
 Make sure it returns the same thing as #each 
 as well.	
 Same for other methods
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

	def my_all?
		self.my_each do |value| 
			unless yield(value)
				return false
			else
				return true
			end
		end
	end

	def my_any?
		self.my_each { |value| return true if yield(value) }		
	end

	def my_none?
		self.my_each do |variable|
			if yield(variable)
				return false
			end			
		end
		return true
	end

	def my_count(arg = nil)
		total = 0
		if arg
			self.my_each { |i| total += 1 if i == arg }				
		elsif block_given?
			self.my_each { |i| total += 1 if yield(i) == true }
		else
			total = self.size
		end
		return total
	end

	def my_map
		ary = []
		self.my_each do |i|
			ary << yield(i)
		end
		return ary
	end

	def my_map_modification(&proc)
		return self unless block_given?
		array = []
		self.my_each do |value|
			array << proc.call(value)
		end
		return array
	end

	def my_inject
		memo = nil
		self.my_each{|value|
			if memo.nil?
				memo = value
			else 
				memo = yield(memo, value)
			end
		}
		return memo
	end
	
end

def multiply_els(arr)
	arr.my_inject { |product, i| product * i }
end

# everything from here down is only for testing purposes

hash = Hash.new
%w(cat dog wombat).my_each_with_index {|item, index| hash[item] = index }
print hash   #=> {"cat"=>0, "dog"=>1, "wombat"=>2}

puts

print (1..10).my_select {|i|  i % 3 == 0 }   #=> [3, 6, 9]

puts

print %w[ant bear cat].my_all? { |word| word.length >= 3 } #=> true
puts
print %w[ant bear cat].my_all? { |word| word.length >= 4 } #=> false

puts

print %w[ant bear cat].my_any? { |word| word.length >= 3 } #=> true
puts
print %w[ant bear cat].my_any? { |word| word.length >= 4 } #=> true

puts

print %w{ant bear cat}.my_none? { |word| word.length == 5 } #=> true
puts
print %w{ant bear cat}.my_none? { |word| word.length >= 4 } #=> false

puts

ary = [1, 2, 4, 2]
print ary.my_count               #=> 4
puts
print ary.my_count(2)            #=> 2
puts
print ary.my_count{ |x| x%2==0 } #=> 3

puts

print (1..4).my_map { |i| i*i }      #=> [1, 4, 9, 16]

puts

print (5..10).my_inject {|sum, n| sum + n }     #=> 45

puts

longest = %w{ cat sheep bear }.my_inject do |memo, word|
   memo.length > word.length ? memo : word
end
print longest                                        #=> "sheep"

puts 

print multiply_els([2, 4, 5])   #=> 40

puts 

print (1..4).my_map_modification { |i| i*i }  #=> [1, 4, 9, 16]

puts









