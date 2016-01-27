require './lib/station'

class OysterCard

 attr_reader :balance


 MAXIMUM_AMOUNT = 90
 MINIMUM_AMOUNT = 1

	def initialize
		@balance = 0
	end

	def top_up(amount)
    fail "Does not accept negative amounts" if amount < 0
    fail "You have reached £#{MAXIMUM_AMOUNT}" if max?(amount)
		@balance += amount
	end





  private

  def max?(amount)
    @balance + amount > MAXIMUM_AMOUNT
  end

  def low_funds?
    @balance < MINIMUM_AMOUNT
  end

  def deduct(amount)
    @balance -= amount
  end


end