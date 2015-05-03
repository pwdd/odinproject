=begin
Build a method #bubble_sort that takes an array and returns a sorted array. 
It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn't it?).
=end

def bubble_sort(numbers)
	(1...numbers.length).each do |variable|
		(0...numbers.length - variable).each do |n|
			if numbers[n] > numbers[n + 1]
				numbers[n], numbers[n + 1] = numbers[n + 1], numbers[n]				
			end
		end
	end
	numbers
end

print bubble_sort [4,3,78,2,0, 2]

=begin
Now create a similar method called #bubble_sort_by which sorts an array but accepts a block. 
The block should take two arguments which represent the two elements currently being compared. 
Expect that the block's return will be similar to the spaceship operator you learned about before -- 
if the result of the block is negative, the element on the left is "smaller" than the element on the right. 
0 means they are equal. A positive result means the left element is greater. Use this to sort your array.
    > bubble_sort_by(["hi","hello","hey"]) do |left,right|
    >   right.length - left.length
    > end
    => ["hi", "hey", "hello"]
=end

def bubble_sort_by(strings)
	(1...strings.length).each do |variable|
		(0...strings.length - variable).each do |s|
			if yield(strings[s], strings[s + 1]) < 0
				strings[s], strings[s + 1] = strings[s + 1], strings[s]
			end
		end
	end
	print strings
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
  right.length - left.length
end













