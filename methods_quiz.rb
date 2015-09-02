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
	
	def icy_hot(temp1, temp2)
		if temp1 < 0 || temp2 < 0
			true
		elsif temp1 > 100 || temp2 > 100
			true
		else
			false
		end
	end
	
	# TODO - write closer_to

	# TODO - write two_as_one?

	# TODO - write pig_latinify

end