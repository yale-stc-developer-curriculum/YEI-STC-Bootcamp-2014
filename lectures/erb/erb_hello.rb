require 'erb'

name = "Charlie"
template = "Hi, <%= name %>."

renderer = ERB.new(template)

puts output = renderer.result()
File.open('hello.html', 'w') {|f| f.write(output) }