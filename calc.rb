puts "The Calculator"
puts "I'll take two numbers and perform a mathematical operation on them. Let's try."

# First number
puts "\nWhat is the first number?"
num1 = gets.chomp

# Handling invalid user input for first number
if num1 == nil || (num1.to_i.to_s != num1 && num1.to_f.to_s != num1)
	puts "Please type a valid first number. For example, type 3 instead of three."
	num1 = gets.chomp
end

# Second number
puts "What is the second number?"
num2 = gets.chomp

# Handling invalid user input for second number
if num2 == nil || (num2.to_i.to_s != num2 && num2.to_f.to_s != num2)
	puts "Please type a valid second number. For example, type 5 instead of five."
	num2 = gets.chomp
end

# Convert number to integer or float
if num1.include? "."
	num1 = num1.to_f
else
	num1 = num1.to_i
end

if num2.include? "."
	num2 = num2.to_f
else
	num2 = num2.to_i
end

# Determine type of math operation to be performed
puts "What kind of math operation would you like to do?"
math_type = gets.chomp

case math_type
when "add", "+", "addition", "plus"
	answer = num1 + num2
when "subtract", "-", "subtraction"
	answer = num1 - num2
when "multiply", "x", "*", "multiplication"
	answer = num1 * num2
when "divide", "/", "division"
	answer = num1 / num2
when "exponent", "**", "power", "^"
	answer = num1 ** num2
when "modulo", "modulus", "%"
	answer = num1 % num2
else
	puts "Sorry, I didn't understand that operation. Try typing +, -, *, /, %, or **. Goodbye."
	exit
end

# Convert math operation string to symbol for printing
case math_type
when "add", "addition", "plus"
	math_type = "+"
when "subtract", "subtraction"
	math_type = "-"
when "multiply", "multiplication"
	math_type = "*"
when "divide", "division"
	math_type = "/"
when "modulo", "modulus"
	math_type = "%"
when "power", "exponent", "^"
	math_type = "**"
end

# Print the operation and answer
puts "#{num1} #{math_type} #{num2} = #{answer}"
