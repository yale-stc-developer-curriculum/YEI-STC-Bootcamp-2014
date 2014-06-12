require 'erb'

arr = ["Thing 1","Thing 2","Thing 3"]

name = "Charlie"
template = "Hi, <%= name %>."

renderer = ERB.new(template)

output = renderer.result()
puts output
File.open('hello.html', 'w') {|f| f.write(output) }