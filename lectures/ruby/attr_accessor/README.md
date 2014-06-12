#attr_accessor

###Remember when we used to define get / set methods by hand -- LOL!! Welcome to Ruby!

- Let's supposed we have a `Person` class, defined as follows:

```ruby
class Person
	def initialize(name)
		@name = name
	end
end
```

- In the past, we might have defined `get` and `set` methods:

```ruby
class Person
	def initialize(name)
		@name = name
	end
	def get_name
		@name
	end
	def set_name(name)
		@name = name
	end
end
```

- But not any more!!! 
- Let's use the `attr_accessor :name` method to define reader and writer methods 
	- `attr_accessor :name` calls both `attr_reader :name` and `attr_writer :name`

###attr_reader
- `attr_reader :name` defines a "get"-ish method for the `name` instance variable
	- `attr_reader :name` is equivalent to:
```ruby
def name
	@name
end
```
- to access the value of `@name`, we would use `charlie.name`  (assuming `charlie` is a `Person` object).

###attr_writer
- `attr_writer :name` defines a "set"-ish method for the `name` instance variable
	- `attr_writer :name` is equivalent to:
```ruby
def name=(value)
	@name = value
end
```
- to set the `@name` variable of a `Person` object named `my_person` to "Casey", we could do any of the following:
	- my_person.name=("Casey")   ---> we would *never* do this...
	- my_person.name="Casey"
	- my_person.name = "Casey"

#Our Person Class

```ruby
class Person
	def initialize(name)
		@name = name
	end
	attr_accessor :name
end
```

###which is 100% equivalent to:

```ruby
class Person
	def initialize(name)
		@name = name
	end
	def name
		@name
	end
	def name=(value)
		@name = value
	end
end
```

##Using our methods

```ruby 
charlie = Person.new("Charlie")   # creates a Person object for with the name "Charlie"

name = charlie.name   # saves the name of the charlie object to the variable name

charlie.name = "Marcus"     #sets the name of the charlie object to "Marcus"

```
