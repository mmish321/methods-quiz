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
	def not_string
		assert_equal "notcool", @m.not_string("cool")
		assert_equal "nothing", @m.not_string("nothing")
end
