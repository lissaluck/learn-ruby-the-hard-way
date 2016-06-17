def cheese_and_crackers(cheese_count, boxes_of_crackers)
	puts "You have #{cheese_count} cheeses!"
	puts "You have #{boxes_of_crackers} boxes of crackers!"
	puts "Man that's enough for a party!"
	puts "Get a blanket. \n"
end

# Give the exact numbers of cheese and crackers
puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

# Use variables to assign the number amounts to cheese and crackers
puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# This allows us to add to our cheese and cracker counts using math to get the totals
puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

# This allows us to add to cheese and crackers by calling their previous amount and adding to them
puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

# Ask the user for numbers of cheese and crackers
puts "How many cheeses do you have?"
number_of_cheese = gets.chomp.to_i
puts "How many crackers do you have?"
number_of_crackers = gets.chomp.to_i
cheese_and_crackers(number_of_cheese, number_of_crackers)
