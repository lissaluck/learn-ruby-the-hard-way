# this take the first element of the argv and assigns it to the input_file
input_file = ARGV.first

# this function prints out the entire text file it receives as an argument
def print_all(f)
	puts f.read
end

# this function uses the seek command and goes back to the very beginning of the text file
def rewind(f)
	f.seek(0)
end

# this function prints out a specific line in a text file and cuts off the line break at the end of it
def print_a_line(line_count, f)
	puts "#{line_count}, #{f.gets.chomp}"
end

# opens the file as defined in ARGV.first
current_file = open(input_file)


puts "First let's print the whole file\n"
# takes the current file as defined in current_file and passes it to print_all as an argument
print_all(current_file)

puts "Now let's rewind, kind of like a tape."
# takes the file defined in ARGV and goes to the beginning of the file
rewind(current_file)

puts "Let's print three lines:"
# defines the first line as a variable value of 1 and prints the first line
current_line = 1
print_a_line(current_line, current_file)
# increments the current_line variable by one (to 2) and prints that line (2) to the second line
current_line = current_line + 1
print_a_line(current_line, current_file)
# increments the current_line variable by one again (to 3) and prints that line (3) to the third line
current_line = current_line + 1
print_a_line(current_line, current_file)