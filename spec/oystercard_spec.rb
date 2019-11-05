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

     it 'has a balance of zero' do
       oyster_card = Oystercard.new
     expect(subject.balance).to eq(0)
    end

    it 'it respond to top up method' do
      oyster_card = Oystercard.new
    expect(subject).to respond_to(:top_up)
  end
 end
