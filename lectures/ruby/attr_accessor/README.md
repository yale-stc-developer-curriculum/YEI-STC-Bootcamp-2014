#attr_accessor

###Remember when we used to define get / set methods by hand -- LOL!! Welcome to Ruby!

- Please use the `attr_accessor :var` method to define reader and writer methods for all the instance variables, where `var` is the name of the variable
	- `attr_accessor :var` calls both `attr_reader :var` and `attr_writer :var`
	- `attr_reader :var` defines a "get"-ish method for the `var` instance variable
		- `attr_reader :var` is equivalent to:
```ruby
def var
	@var
end
```
	
- to access the value of `@var`, we would use ObjectName.var
	- `attr_writer :var` defines a "set"-ish method for the `var` instance variable
		- `attr_writer :var` is equivalent to:
```ruby
def var=(value)
	@var = value
end
```
- to set the value of `@var` to "asdf", we could do any of the following:
	- ObjectName.var=("asdf")   ---> we would *never* do this...
	- ObjectName.var="asdf"
	- ObjectName.var = "asdf"
