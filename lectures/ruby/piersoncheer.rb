#Some Array Examples
somenumbers = [1, 2, 3, 5, 7]
assortedstuff = [1, "cheese", :beans, somenumbers]

#Pierson Cheer
letters = ['P', 'I', 'E', 'R', 'S', 'O', 'N', 'C', 'O', 'L', 'L', 'E', 'G', 'E']

#Print Pierson Cheer to the terminal output using "while"
i = 0
while (i < letters.length)
  puts letters[i]
  i = i + 1
end

#number iterator example
3.times do
  puts "woo!"
end

#Pierson Cheer using an iterator "each"
letters.each do |lett|
  puts "The " + lett + " is for the " + lett + " in Pierson College!"
end



#(Introduce Pry in Grandma App separately)


#Is the variable "lett" outside the same as "lett" inside?
require 'pry'
lett = 'P'
letters.each do |lett|
  binding.pry if lett == "P"
  puts "The " + lett + " is for the " + lett + " in Pierson College!"
end