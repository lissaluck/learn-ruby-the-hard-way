# What follows was the original code file. At the bottom it will be stripped down to its simplest form
=begin
from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line too, how?
in_file = open(from_file)
indata = in_file.read

puts "The input file is #{indata.length} bytes long"

puts "Does the output file exist? #{File.exist?(to_file)}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
$stdin.gets

out_file = open(to_file, 'w')
out_file.write(indata)

puts "Alright, all done."

out_file.close
in_file.close
=end

# Here it is combined to create less bloat. I chose to leave it separated into the orginal argument, input and output, and closing files. However it could be all combined by  use of ; .
from_file, to_file = ARGV

in_file = open(from_file); indata = in_file.read

out_file = open(to_file, 'w'); out_file.write(indata)

out_file.close; in_file.close