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
		assert_equal 0, @m.closer_to(4,3,2)
	end
end
