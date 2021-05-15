require 'byebug'
class Calculator
  def sum(a, b)
    a + b
    end

  def subtract(a, b)
    a - b
  end
end

calc = Calculator.new
tests_sum = {
  [1,2] => 3,
  [2,4] => 6,
  [2,5] => 6
}

tests_sum.each do |input, expect_result|
  # byebug
  if !(calc.sum(input[0], input[1]) == expect_result)
    raise "Test failed for inputs #{input}, expected result #{expect_result}"
  end
end