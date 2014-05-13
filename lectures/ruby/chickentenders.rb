# ------------------------------------------------------------------------------
# Lesson 2 - Ruby control flow
# Is It Chicken Tenders Day?
# 5/??/2014
# ------------------------------------------------------------------------------

# To test any of your functions from the command line, type $ ruby lesson2.rb
# and follow the instructions...



# ------------------------------------------------------------------------------
# I Do
# ------------------------------------------------------------------------------

# Specification:
# write a function tenders(day) that will return true if day == "THURSDAY" and
# false otherwise.

# Examples:
# tenders('THURSDAY') => true
# tenders('Thursday') => false
# tenders('WEDNESDAY') => false
# tenders('') => false
# tenders('cats') => false
# ------------------------------------------------------------------------------

def tenders(day)
	if day == 'THURSDAY'    
		true
	else
		false
	end
end





# ------------------------------------------------------------------------------
# We Do
# ------------------------------------------------------------------------------

# Specification:
# write a function tenders_ci(day) that will return "It's Chicken Tenders Day!" 
# if the day is Thursday (case-insensitive) and "Nope." otherwise

# Examples
# tenders_ci('THURSDAY') => "It's Chicken Tenders Day!"
# tenders_ci('tHuRsDaY') => "It's Chicken Tenders Day!"
# tenders_ci('thursday') => "It's Chicken Tenders Day!"
# tenders_ci('wednesday') => "Nope."

# ------------------------------------------------------------------------------

def tenders_ci(day)
	if day.upcase == 'THURSDAY'  #convert our string to uppercase and then test
		"It's Chicken Tenders Day!" 
	else 
		"Nope."
	end
end

# ------------------------------------------------------------------------------
# Specification:
# write a function tenders_flip() that will return "It's Chicken Tenders Day!"
# if Random.rand(2) == 0 and "Nope" otherwise.
# This achieves 50/50 probability...

# Examples
# tenders_flip() => "It's Chicken Tenders Day!"
# tenders_flip() => "Nope."
# tenders_flip() => "It's Chicken Tenders Day!"

# ------------------------------------------------------------------------------

def tenders_flip()
	if Random.rand(2) == 0  #achieves 50/50 probability
		"It's Chicken Tenders Day!" 
	else 
		"Nope."
	end
end





# ------------------------------------------------------------------------------
# You Do
# ------------------------------------------------------------------------------
# Specification:
# write a function tenders_rand() that will return "It's Chicken Tenders Day!"
# approximately 1/7 times it's called

# Examples
# tenders_rand() => "It's Chicken Tenders Day!"
# tenders_rand() => "Nope."
# tenders_rand() => "Nope."

# ------------------------------------------------------------------------------

def tenders_rand()
	if Random.rand(7) == 0  #achieves 1/7 probability
		"It's Chicken Tenders Day!" 
	else 
		"Nope."
	end
end

# ------------------------------------------------------------------------------
# Specification
# write a function lunch(day) that returns a different (your choice) meal for 
# each (case-insensitive) day of the week passed to it

# Examples
# lunch("Saturday") => "fish"
# lunch("Friday") => "pizza"
# lunch("SUNDAY") => "steak"
# ------------------------------------------------------------------------------

# my solution -- yours may vary!
def lunch(day)
	day = day.downcase
	case day
	when "sunday"
		"steak"
	when "monday"
		"hamburgers"
	when "tuesday"
		"pasta salad"
	when "wednesday"
		"eggplant parmesan"
	when "thursday"
		"chicken tenders"
	when "friday"
		"pizza"
	when "saturday"
		"fish"
	end
end

# ------------------------------------------------------------------------------
# Specification:
# write a function tenders_num(num) that will return "It's Chicken Tenders Day!"
# if the num represents the date of a Thursday, assuming the month starts with 
# Sunday the 1st. 

# Otherwise, tenders_num(num) should return 
# "You have x days to go.", where x is the number of days until Thursday.

# Examples
# tenders_num(5) => "It's Chicken Tenders Day!"
# tenders_num(2) => "You have 3 days to go."
# tenders_num(12) => "It's Chicken Tenders Day!"
# tenders_num(6) => "You have 6 days to go."
# tenders_num(101) => "You have 2 days to go."

# ------------------------------------------------------------------------------

def tenders_num(num)
	mod = num % 7
	days_left = 5 - mod    #calculate how many days left

	if days_left < 0     #adjust in case days_left is negative
		days_left = days_left.abs + 5
	end

	if days_left == 0   
		"It's Chicken Tenders Day!" 
	else 
		"You have " + days_left.to_s + " days to go."
	end
end

# ------------------------------------------------------------------------------
# Specification:
# Same as specifications tenders_num(num), except now write a function
# tenders_adv(start, num) which returns "It's Chicken Tenders Day!"
# if the num represents the date of a Thursday, assuming the first Sunday of the 
# month is on the *start* date.

# Otherwise, tenders_adv(num) should return 
# "You have x days to go.", where x is the number of days until Thursday.

# Hint: You can use tenders_num(num)
# Examples
# tenders_adv(1, 5) => "It's Chicken Tenders Day!"
# tenders_adv(2) => "You have 3 days to go."
# tenders_adv(12) => "It's Chicken Tenders Day!"
# tenders_adv(6) => "You have 6 days to go."
# tenders_adv(101) => "You have 2 days to go."

# ------------------------------------------------------------------------------

def tenders_adv(start, num)
	num_adj = num - start + 1  #shift our number
	tenders_num(num_adj)   #and call tenders_num
end


# ------------------------------------------------------------------------------
# Specification:
# Same as specifications for tenders_adv(start,num), except now write a function
# tenders_ultimate(start, num, day) which returns "It's Chicken Tenders Day!"
# if the num represents the date of a *day*, assuming the first Sunday of the 
# month is on the *start* date.
# Day should be a case-insensitive day of the week.

# Otherwise, tenders_adv(num) should return 
# "You have x days to go.", where x is the number of days until *day*.

# Examples
# tenders_ultimate(1, 5, "Thursday") => "It's Chicken Tenders Day!"
# tenders_ultimate(3, 8, "Monday") => "You have 6 days to go."
# tenders_ultimate(5, 19, "Wednesday") => "You have 3 days to go.""
# ------------------------------------------------------------------------------

def tenders_ultimate(start, num, day)
	num_adj = num - start + 1    #adjust our number
	mod = num_adj % 7     #take the modulus

	day_adj = day.downcase

	case day_adj         #convert our chicken-tenders day into a number
	when "sunday"
		val=1
	when "monday"
		val = 2
	when "tuesday"
		val = 3
	when "wednesday"
		val = 4
	when "thursday"
		val = 5
	when "friday"
		val = 6
	when "saturday"
		val = 7
	end

	days_left = val - mod    #calculate how many days left

	if days_left < 0     #adjust in case days_left is negative
		days_left = days_left.abs + val
	end

	if days_left == 0   
		"It's Chicken Tenders Day!" 
	else 
		"You have " + days_left.to_s + " days to go."
	end
end


# ------------------------------------------------------------------------------

# Some code to facilitate testing your code from the command line
puts "You are ready to test!"
puts "Example inputs: lunch('Saturday'), tenders('thursday'), and so on"
puts "Type end to exit."
puts "*****************************************************************"

keep_going = true
while keep_going   # loops to keep asking for your input
	print "> " 
	code = gets.strip
	if code.downcase == 'end'    # we're done
		keep_going = false
		puts "*****************************************************************"
	else
		begin
			puts eval(code)   #evaluates your code, and outputs the result
		rescue Exception => e  
			puts e.message   #catches the error
		end
	end
end


