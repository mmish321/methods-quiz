module MethodsQuiz
	
	def has_teen(number1, number2, number3)
		if number1 >= 13 || number2 >= 13 || number3 >=13
			if number1 <= 19
				true
			elsif number2 <= 19
				true
			elsif number3 <= 19
				true
			else
				false
			end
		else
			false
		end
	end
	
	def not_string(str)
		if str.start_with?("not")
			str
		else
			n = "not"
			word = n + str
			word
		end
		
	end
	
	# TODO - write icy_hot?
	
	# TODO - write closer_to

	# TODO - write two_as_one?

	# TODO - write pig_latinify

end