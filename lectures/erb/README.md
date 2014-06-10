##ERB

- a convenient way to generate any kind of text, in any quantity, from templates
- the templates combine plain text with Ruby code for variable substitution and flow control

#Syntax

- Expressions: `<%= expression %>`
	- the enclosed code is an expression
	- the renderer will substitute the result of the code when it renders the template
	- useful to embed a line of code into the template
		- or to display the contents of a variable.
```
Hello, <%= @name %>.
Today is <%= Time.now.strftime('%A') %>.
```

- Scriptlets: `<% scriptlet %>`
	- the enclosed code is a scriptlet 
	- each scriptlet is caught and executed
	- commonly used for embedding flow control or conditional logic

```
<ul>
  <% for @item in @shopping_list %>
    <li><%= @item %></li>
  <% end %>
</ul>
```

- Comments: `<%# comment %>`
	- hashtags comment out erb code (just like normal ruby!)

- Suppress Trailing Newlines: `<% scriplet -%>`
	- by default, a newline character is added to the page after the position of each tag
	- you can suppress the newline simply by adding a trailing hyphen to tags

```
<ul>
  <% for @item in @items -%>
    <li><%= @item %></li>
  <% end -%>
</ul>
```
