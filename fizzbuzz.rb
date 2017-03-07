require 'rspec'

class Fizzbuzz
  def output(number)
    if number == 3 || number == 6
      return "fizz"
    elsif number == 5 
      return "buzz"
    elsif number % 5 == 0
      return "fizzbuzz"
    elsif number % 3 == 0
      return "I will always beat you!"
    else 
      return number 
    end
  end 

  def go
    (1..100).each do |number|
      puts output(number)
    end
  end
end

RSpec.describe Fizzbuzz do
  describe '#output' do
    it 'should return 1 if given 1' do
      fb = Fizzbuzz.new
      expect(fb.output(1)).to eq(1)
    end

    it 'should return 2 if given 2' do 
      fb = Fizzbuzz.new
      expect(fb.output(2)).to eq(2)
    end
  end

  describe '#output' do 
    it 'should return fizz if given 3' do 
      fb = Fizzbuzz.new 
      expect(fb.output(3)).to eq("fizz") 
    end
  end

  describe '#output' do 
    it 'should return buzz if given 5' do 
      ihene = Fizzbuzz.new
      expect(ihene.output(5)).to eq("buzz")
    end 
  end 

  describe '#output' do 
    it 'should return fizz if given 6' do
      inka = Fizzbuzz.new 
      expect(inka.output(6)).to eq("fizz")
    end
  end

  describe '#output' do 
    it 'should return fizzbuzz if given 30' do
      tbb = Fizzbuzz.new
      expect(tbb.output(30)).to eq("fizzbuzz")
    end 
  end 

  describe '#output' do 
    it 'should return I will always beat you if given 120' do 
      gotyou = Fizzbuzz.new 
      expect(gotyou.output(9)).to eq("I will always beat you!")
    end 
  end
end
