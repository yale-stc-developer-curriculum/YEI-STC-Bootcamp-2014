require 'erb'

name = "Charlie"
template = "Hi, <%= name %>."

renderer = ERB.new(template)

output = renderer.result()
puts output
File.open('hello.html', 'w') {|f| f.write(output) }