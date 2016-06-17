def while_loop_func(i, max)
	numbers = []
	
	while i < max
		puts "At the top i is #{i}"
		numbers.push(i)
		
		i += 1
		puts "Numbers now: #{numbers}"
		puts "At the bottom i is #{i}"
	end
	
	puts "The numbers: "
	
	for num in numbers
		puts num
	end
end

while_loop_func(1,3)
while_loop_func(2,5)


=begin
i = 0
numbers = []

while i < 6
	puts "At the top i is #{i}"
	numbers.push(i)
	
	i += 1
	puts "Numbers now: ", numbers
	puts "At the bottom i is #{i}"
end

puts "The numbers: "

# remember you can write this 2 other ways
numbers.each {|num| puts num }
=end