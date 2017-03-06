require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end


  def sqaure(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

RSpec.describe Calculator do 
  describe '#add' do 
    it 'should return the sum of two numbers' do 
      calculator = Calculator.new 
      expect(calculator.add(3,5)).to eq(8)
    end
  end 

  describe '#subtract' do 
    it 'should return the difference of two numbers' do 
      calculator = Calculator.new 
      expect(calculator.subtract(8,4)).to eq(4)
    end
  end

  describe '#multiply' do 
    it 'should return the product of two numbers' do 
      calculator = Calculator.new 
      expect(calculator.multiply(3,5)).to eq(15)
    end
  end 


  describe '#devide' do 
    it 'should return the quotient of two numbers' do 
      calculator = Calculator.new 
      expect(calculator.divide(16,4)).to eq(4)
    end
  end 

  describe '#square' do 
    it 'should return the sqaure of a number' do 
      calculator = Calculator.new 
      expect(calculator.sqaure(4)).to eq(16)
    end
  end 

  describe '#power' do 
    it 'should return the exponent of two numbers' do 
      calculator = Calculator.new 
      expect(calculator.power(5,2)).to eq(25)
    end
  end 
end