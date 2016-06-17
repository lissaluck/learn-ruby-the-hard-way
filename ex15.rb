# Assigns a filename to the results of an argument that must be entered when you run the program
filename = ARGV.first

# Opens a file, based on the filename, given by the user
txt = open(filename)

# Outputs to screen to tell someone which file has been opened and read out what's in it
puts "Here's your file #{filename}:"
print txt.read

print "Type the filename again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read