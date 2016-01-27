require 'journey'

describe Journey do
   
   describe 'journey_history' do
      it 'displays an empty journey history when new' do
      expect(subject.journey_history).to eq ({}) 
      #other way woud be 
      #expect(card.journey_history.empty?).to eq true 
      end
   end
        
    describe 'touching in and out' do

      context 'have money on ' do

       	before do
        card.top_up(1)
       	 end
       	

        context '#in_journey?' do
          it 'new journey isn\'t in journey' do
          expect(journey.in_journey?).to eq false
          end
        end



      	context '#touch_in' do
          	it 'has touched in at entry_station' do
          	journey.touch_in(entry_station)
          	expect(journey.in_journey?).to eq true
          	end
        
			it 'remembers entry station' do
         	journey.touch_in(entry_station)
         	expect(journey.entry_station).to eq (entry_station)
       		end
        end
    end    
end
    # context '#touch_out' do
 #      it 'has touched out at station' do
 #        journey.touch_out(exit_station)
 #        expect(journey.in_journey?).to eq false
 #        end

 #      it 'charges for the journey' do
 #        journey.touch_in(entry_station)
 #        expect {journey.touch_out(exit_station)}.to change{journey.balance}.by(-OysterCard::MINIMUM_AMOUNT)
 #        end

 #      it 'remembers exit_station after checking out' do
 #        journey.touch_out(exit_station)
 #        expect(journey.exit_station).to eq exit_station
 #        end   
 #    end
