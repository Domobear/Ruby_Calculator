#Member
titleText = "Calculator"

titleBarText = ""
while(titleBarText.length < titleText.length)
	titleBarText += "="
end

param1Text = "Please enter the first number:\n"
param2Text = "Please enter the second number:\n"

chooseOpText = "Please choose a operator:\n"
opText = ["+", "-", "*", "/"]

resultText = "Result is:\n"

#Function
def Calculate(op, num1, num2)
	result = num1

	case op
	when "+"
		result += num2
	when "-"
		result -= num2
	when "*"
		result *= num2
	when "/" 
		result /= num2
	end

	return result
end

#Main
puts "#{titleBarText}"
puts "#{titleText}"
puts "#{titleBarText}"

puts "#{param1Text}"
num1 = gets.chomp.to_f

begin
	puts "#{chooseOpText}"
	for i in 0..opText.length-1
		print "#{opText[i]}  "
	end
	print "\n"

	operator = gets.chomp
end while !opText.include?(operator)

puts "#{param2Text}"
num2 = gets.chomp.to_f

result = Calculate(operator, num1, num2)

puts "#{resultText}#{result}"


#Note
#This can conver array value to hash key and value is index
#opHash = Hash[opText.map.with_index.to_a]

#Check type method
#puts operator.class == Fixnum
#puts operator.instance_of? String