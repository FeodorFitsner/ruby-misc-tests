require 'fileutils'
FileUtils::mkdir_p 'foo/bar'

puts "foo contents:"
files = Dir.entries('foo')
for file in files
	puts file
end

File.open("foo/bar/text.txt", 'w') {|f| f.write("Hello, world!") }

puts "foo/bar contents:"
files = Dir.entries('foo/bar')
for file in files
	puts file
end

puts "File contents:"
File.open("foo/bar/text.txt", "r") do |f|
  f.each_line do |line|
    puts line
  end
end