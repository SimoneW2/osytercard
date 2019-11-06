class Oystercard
  attr_accessor :balance #This is equivalent to writting a balance method that is empty
#This initializes a instance variable which we give zero as we want balance to equal zero

  def initialize
    @balance = 0
  end

   def top_up(amount)
     @balance += amount
   end
end
