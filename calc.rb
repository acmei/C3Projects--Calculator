puts "The Calculator"
puts "I'll take two numbers and perform a mathematical operation on them. Let's try."

# First number
puts "\nWhat is the first number?"
num1 = gets.chomp

if num1 == nil || (num1.to_i.to_s != num1 && num1.to_f.to_s != num1)
	puts "Please type a valid first number. For example, type 3 instead of three."
	num1 = gets.chomp
end

# Second number
puts "What is the second number?"
num2 = gets.chomp

if num2 == nil || (num2.to_i.to_s != num2 && num2.to_f.to_s != num2)
	puts "Please type a valid second number. For example, type 5 instead of five."
	num2 = gets.chomp
end

# Variables
answer = 0

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

# Determine type of math operation
puts "What kind of math operation would you like to do?"
math_type = gets.chomp

if math_type == "add" || math_type == "+" || math_type == "addition"
	answer = num1 + num2
elsif math_type == "subtract" || math_type == "-" || math_type == "subtraction"
	answer = num1 - num2
elsif math_type == "multiply" || math_type == "x" || math_type == "*" || math_type == "multiplication"
	answer = num1 * num2
elsif math_type == "divide" || math_type == "/" || math_type == "division"
	answer = num1 / num2
elsif math_type == "exponent" || math_type == "**" || math_type == "power" || math_type == "^"
	answer = num1 ** num2
elsif math_type == "modulo" || math_type == "modulus" || math_type == "%"
	answer = num1 % num2
else
	puts "Sorry, I didn't understand that operation. Try typing +, -, *, /, %, or **. Goodbye."
	exit
end

# Convert math operation string to symbol for printing
if math_type == "add" || math_type == "addition"
	math_type = "+"
elsif math_type == "subtract" || math_type == "subtraction"
	math_type = "-"
elsif math_type == "multiply" || math_type == "multiplication"
	math_type = "*"
elsif math_type == "divide" || math_type == "division"
	math_type = "/"
elsif math_type == "modulo" || math_type == "modulus"
	math_type = "%"
elsif math_type == "power" || math_type == "exponent" || math_type == "^"
	math_type = "**"
end

# Print the operation and answer
puts "#{num1} #{math_type} #{num2} = #{answer}"
