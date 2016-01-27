class Journey
attr_reader :journey_history, :entry_station, :exit_station

def initialize 
	@journey_history = {}
end

  def touch_in(station)
    fail "Insufficient Funds Available" if low_funds?
    @entry_station = station
    journey_history["entry_station"] = @entry_station 
  end

  def touch_out(station)
    @entry_station = nil
    @exit_station = station
    deduct(MINIMUM_AMOUNT)
    journey_history["exit_station"] = @exit_station
  end

   def in_journey?
    @entry_station != nil
   end

end