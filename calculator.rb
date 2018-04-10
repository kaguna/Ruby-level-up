class Calculator 
	$number1 = 0
	$number2 = 0
	def menu
		puts "Welcome to Calculator"
		puts "1: Add\n2: Subtract\n3: Multiply\n4: Divide"
		option = gets.chomp
		get_numbers
		if option == '1'
		 	puts add($number1, $number2)
		elsif option== '2'
			puts subtract($number1, $number2)
		elsif option == '3'
			puts multiply($number1, $number2)
		elsif option == '4'
			puts divide($number1, $number2)
		else
			puts "Please input a valid number"
		end

	end
	def get_numbers
		puts "Enter the first number:"
		$number1 = gets.to_i
		puts "Enter the second number:"
		$number2 = gets.to_i
	end
	# def calculate
	# 	puts add($number1, $number2)
	# 	puts multiply($number1, $number2)
	# 	puts subtract($number1, $number2)
	# 	puts divide($number1, $number2)
	# end

	def add number1, number2
		number1 + number2
	end

	def multiply number1, number2
		number1 * number2
	end

	def subtract number1, number2
		number1 - number2
	end

	def divide number1, number2
		if number2 == 0
			puts "Number must be greater than zero"
		else
			number1.to_f/number2.to_f
		end
	end
end
calculator = Calculator.new
calculator.menu

