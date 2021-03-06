require_relative '../lib/fizzbuzz'

describe 'fizzbuzz' do
  it 'return "fizz" when  divided by 3' do
    expect(fizzbuzz(3)).to eq 'fizz'
    expect(fizzbuzz(303)).to eq 'fizz'
    expect(fizzbuzz(99)).to eq 'fizz'
  end
end

describe 'fizzbuzz' do
  it 'return "buzz" when divided by 5' do
    expect(fizzbuzz(5)).to eq 'buzz'
    expect(fizzbuzz(25)).to eq 'buzz'
    expect(fizzbuzz(5000)).to eq 'buzz'
    
  end
end

describe 'fizzbuzz' do
  it 'returns "fizzbuzz" when divided by 3 and 5' do
    expect(fizzbuzz(15)).to eq 'fizzbuzz'
    expect(fizzbuzz(60)).to eq 'fizzbuzz'
    expect(fizzbuzz(300)).to eq 'fizzbuzz'
  end
end

describe 'fizzbuzz' do
  it 'returns the number is not divisible by 3 or 5' do
    expect(fizzbuzz(4)).to eq 4
    expect(fizzbuzz(71)).to eq 71
    expect(fizzbuzz(107)).to eq 107
  end
end

describe 'fizzbuzz' do
  (1..100).each do |number|
    if number % 3 == 0 and number % 5 == 0
      it 'return a number divisible by 3 and 5' do
        expect(fizzbuzz(number)).to eq 'fizzbuzz'
      end
    elsif number % 3 == 0
      it 'return a number divisible by 3' do
        expect(fizzbuzz(number)).to eq 'fizz'
      end
    elsif number % 5 == 0
      it 'return a number divisible by 5' do
        expect(fizzbuzz(number)).to eq 'buzz'
      end
    else
      it 'return a number not divisible by 3 or 5' do
        expect(fizzbuzz(number)).to eq number
      end
    end
  end
end