require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz'

class MethodsQuizTest < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz
   	end.new
	end

	# TODO - write tests here
	def test_has_teen
		assert_equal true, @m.has_teen(14,3,4)
		assert_equal false, @m.has_teen(4,3,2)
		assert_equal true, @m.has_teen(19,15,14)
	end
	def test_not_string
		assert_equal "notcool", @m.not_string("cool")
		assert_equal "nothing", @m.not_string("nothing")
	end
	def test_icy_hot
		assert_equal true, @m.icy_hot(-79,6)
		assert_equal true, @m.icy_hot(-100,189)
		assert_equal false, @m.icy_hot(45,68)
		assert_equal true, @m.icy_hot(8,108)
		
	end
	def test_closer_to
		assert_equal 5, @m.closer_to(3,6,5)
		assert_equal 0, @m.closer_to(4,3,5)
		assert_equal -1, @m.closer_to(0,-1,-2)
	end
	def test_two_as_one
		assert_equal true, @m.two_as_one(3,2,1)
		assert_equal false, @m.two_as_one(5,4,6)
		assert_equal true, @m.two_as_one(-4,-1,-3)
	end
	def test_pig_latinify
		assert_equal "appleway", @m.pig_latinify("apple")
		assert_equal "ookcay", @m.pig_latinify("cook")
		assert_equal "sh*t", @m.pig_latinify("shit")
		assert_equal "f*ck", @m.pig_latinify("FuCk")
		assert_equal "earway", @m.pig_latinify("EAR")
	end
end
