require 'rspec'
require 'nums'

describe 'numbers to words' do
  it 'gets a numbers from 1-9 and translates it to words' do
    nums(1).should eq('one')
  end

  it 'gets a numbers from 11-19 and translates it to words' do
    nums(17).should eq('seventeen')
  end
  it 'gets a number from 20-90 and translates it to words' do
    nums(30).should eq('thirty')
  end
  it 'gets a number from 100-999 and translates it to words' do
    nums(999).should eq('nine hundred ninety nine')
  end
   it 'works for complicated numbers' do
    big_numbers(123456789).should eq 'one hundred twenty three million four hundred fifty six thousand seven hundred eighty nine'
  end
end    