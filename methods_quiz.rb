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
	
	def closer_to(given, guess1, guess2)
		if guess1 > given && guess2 > given
			dif1 = guess1 - given
			dif2 = guess2 - given
			if dif1 > dif2
				guess2
			elsif dif2 >dif1
				guess1
			else
				0
			end
		elsif guess1 < given && guess2 < given
			dif1 = given - guess1
			dif2 = given - guess2
			if dif1 > dif2
				guess2
			elsif dif2 >dif1
				guess1
			else
				0
			end
		else
			if guess1 > given && guess2 < given
			dif1 = guess1 - given
			dif2 = given - guess2
				if dif1 > dif2
					guess2
				elsif dif2 >dif1
					guess1
				else
					0
				end
			else guess1 < given && guess2 > given
			dif1 = given - guess1
			dif2 = guess2 - given
				if dif1 > dif2
					guess2
				elsif dif2 >dif1
					guess1
				else
					0
				end
			end
		end
	end

	

	# TODO - write pig_latinify

end