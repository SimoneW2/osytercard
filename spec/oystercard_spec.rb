require 'oystercard'

describe Oystercard do
  it 'Creates an instance' do
    oyster_card = Oystercard.new(0)
  expect(oyster_card).to be_instance_of(Oystercard)
  end

#Checks that attribute accessor balance is responsive in oystercard folder
   it 'does it respond to balance' do
    oyster_card = Oystercard.new(0)
   expect(subject).to respond_to(:balance)
   end

     it 'has a balance of zero' do
       oyster_card = Oystercard.new(0)
     expect(subject.balance).to eq(0)
    end

    it 'responds to top_up method with one arguement' do
      oyster_card = Oystercard.new(0)
    expect(subject).to respond_to(:top_up).with(1).argument #Subject is a keyword for the current instance in this case meaning oyster_card
  end

  it 'adds money to balance' do
    oyster_card = Oystercard.new(0)
    expect{subject.top_up 1}.to change{subject.balance}.by 1
 end

 it 'raises an error if the maximum balance is exceeded' do
   maximum_balance = Oystercard::MAXIMUM_BALANCE #The class::CONSTANT means that constant is inside the class the variable stores this message
   subject.top_up(maximum_balance) #subject is keyword
  expect{subject.top_up 1}.to raise_error "Maximum balance of £ #{maximum_balance} exceeded" #Needs double quotes to use write the variable
 end

  it 'checks that the class Oystercard respond to method deduct' do
    oyster_card = Oystercard.new(0)
   expect(subject).to respond_to(:deduct).with(1).argument
   end

   it 'deducts money from balance' do
     oyster_card = Oystercard.new(0)
     expect{subject.deduct 1}.to change{subject.balance}.by -1
   end

   it 'checks Oystercard class responds to touch_in method' do
    oyster_card = Oystercard.new(0)
    expect(subject).to respond_to(:in_journey?)
  end

  it 'Detects if in_journey method is true' do
    oyster_card = Oystercard.new(0, false)
    expect(oyster_card.in_journey?).to be false
  end

  it 'checks that the value of in_use method changes from false to true when user touch_in' do
  oyster_card = Oystercard.new(0, false)
  expect { oyster_card.touch_in }.to change(oyster_card, :in_use).from(false).to(true)
  end

  it 'Checks in_use value changes into false in touch_out method' do
    oyster_card = Oystercard.new(0, true)
    expect {oyster_card.touch_out}.to change(oyster_card, :in_use).from(true).to(false)
  end
end
