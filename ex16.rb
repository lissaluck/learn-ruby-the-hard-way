# Create a file and pass it input
filename = ARGV.first
script = $0

# For output purposes, meaning I want to see what this line of code does
#puts "The $0 has saved #{script} to it; I wonder where it got that."

# Tell the user what we're going to do
puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

# Collect the input from the user
$stdin.gets

# Tell the user we're opening the file in which to store their input
puts "Opening the file..."
# Open the file we created from the user in write mode
target = open(filename, 'w')

# Tell the user we're erasing the file
puts "Truncating the file. Goodbye!"
target.truncate(0)

# Tell the user we want three line of input from them
puts "Now I'm going to ask you for three lines."

# Print out a prompt for values, collect the input, and chomp off the line break at the end. 
print "Line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

# Tell the use what we're doing with their input
puts "I'm going to write these to the file."

# Write the values into the file with line breaks at the end, so each value is on its own line.
target.write(line1 + "\n" + line2 + "\n" + line3 + "\n")

=begin
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")
=end

# Tell the user we're closing the file and close it.
puts "And finally, we close it."
target.close

=begin 

Do we need to explicitly close?
Yes.

If yes then why does the GC autoclose?
Because after it has collected the object, there is no way for you to close the file anymore, and thus you would leak file descriptors.

Note that it's not the garbage collector that closes the files. The garbage collector simply executes any finalizers for an object before it collects it. It just so happens that the File class defines a finalizer which closes the file.

If not then why the option?
Because wasted memory is cheap, but wasted file descriptors aren't. Therefore, it doesn't make sense to tie the lifetime of a file descriptor to the lifetime of some chunk of memory.

You simply cannot predict when the garbage collector will run. You cannot even predict if it will run at all: if you never run out of memory, the garbage collector will never run, therefore the finalizer will never run, therefore the file will never be closed.
=end