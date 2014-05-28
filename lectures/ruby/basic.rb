# Some basic ruby examples to show the class:

# Have them start up irb

# Numbers
5
24
24.0
0.148

# Algebra
5 + 5 ==> 10
10 - 5 ==> 5
6 / 3 ==> 2
12 * 4 ==> 48
3 ** 2 ==> 9	# Exponent
10 % 3 ==> 1 	# Modulus

# Strings
""
" "
"H"
"Hi"
"John"
"abcd"
"1234"
"+++^^^^+++"

# Concatenating Strings
"Hi" + " " + "John" ==> "Hi John"
"YEI" + " " + "Tech" + " " + "Bootcamp" ==> "YEI Tech Bootcamp"
"Hello, ".concat("World!") ==> "Hello, World!"
"Hello, " + "World!" ==> "Hello, World!"
"Hello, " << "World!" ==> "Hello, World!"	# The "shovel" operator works kind of like "<<" in the CLI!

# Symbols
favorite = :chicken			# Symbols start with a ":"
meh = :tofu
puts meh ==> meh			# Symbols are a lot like strings
colors = :"red and co." ==> :"red and co."	# You can include non-alphanumeric symbols by quoting the symbol
meh << :zesty ==> error		# Symbols aren't like strings because they can't be changed (i.e., they're immutable)


# Boolean
true ==> true
false ==> false

# Logical operators
!true ==> false				# Negation operator
!false ==> true
true && true ==> true		# And/conjunction operator
true && false ==> false
true || false ==> true		# Or/disjunction operator
false || false ==> false
true || true ==> true
!nil ==> true				# nil is a "false-y" value (i.e., in logical operations, nil is considered false)
!7 ==> false				# Everything but false and nil are true
!0 ==> false 				# Yes, even 0 is truthy!

# Variables
a = 1 ==> 1
b = a = 1 ==> 1
a ==> 1
b ==> 1
a = 1 ==> 1
a = "string!" ==> "string!"

# Arrays
arr = [A, B, C, D, E] ==> [A, B, C, D, E]
arr[0] ==> A
arr[1] ==> B
arr[-1] ==> E
arr[-2] ==> D

# Ranges
(0..10) ==> 0..10	# Includes 10
(0..10).to_a ==> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
(0...10) ==> 0...10	# Excludes 10
(0...10).to_a ==> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
arr[0..2] ==> [A, B, C]
arr[1,-1] ==> [B, C]

# Hashes
grades = { "Jane Doe" => 10, "Jim Doe" => 6 }	# Hashes are key-value pairs
grades["Jane Doe"] ==> 10						# Unlike arrays, you access a hash value via its key
pairs = { 1 => 2, 2 => 3, 3 => 4}
pairs[1] ==> 2 									# Even if the keys are numbers!

# Sets
require 'set'	# Include set gem
Set.new[1,2,3,4,5] ==> {1, 2, 3, 4, 5}
Set.new[1,2,3,3,3] ==> {1, 2, 3}	# Sets don't contain duplicates
set1 = [1,1,2,3,3].to_set ==> {1, 2, 3}
set2 = [2,2,3,4,4].to_set ==> {2, 3, 4}

# Set operations
set1 & set2 ==> {2, 3}			# Set intersection
set1 | set2 ==> {1, 2, 3, 4}	# Set union
set1 + set2 ==> {1, 2, 3, 4}	# set union (same as '|')
set1 - set2 ==> {1}				# Set difference
set2 - set1 ==> {4}				# Order matters!