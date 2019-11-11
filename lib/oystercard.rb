class Oystercard
attr_accessor :balance #This is equivalent to writting a balance method that is empty
#This initializes a instance variable which we give zero as we want balance to equal zero
attr_accessor :in_use

MAXIMUM_BALANCE = 90 #gives the constant a value of 90
  def initialize(balance = 0, in_use = false)
    @balance = balance
    @in_use = in_use
  end

   def top_up(amount)
     #can replace raise with fail and it will do that same thing.
     raise "Maximum balance of £ #{MAXIMUM_BALANCE} exceeded" if amount + balance > MAXIMUM_BALANCE
     @balance += amount
   end

   def deduct(amount)
     @balance -= amount
   end

   def in_journey?
     @in_use = false
   end

   def touch_in
      @in_use = true
    end

    def touch_out
     @in_use = false
    end
end
