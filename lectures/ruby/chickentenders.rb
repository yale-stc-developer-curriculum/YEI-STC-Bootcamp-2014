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


