require 'oystercard'

describe Oystercard do
  it 'Creates an instance' do
    oyster_card = Oystercard.new
  expect(oyster_card).to be_instance_of(Oystercard)
  end

#Checks that attribute accessor balance is responsive in oystercard folder
   it 'does it respond to balance' do
    oyster_card = Oystercard.new
   expect(subject).to respond_to(:balance)
   end

 end
