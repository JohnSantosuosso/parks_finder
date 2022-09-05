require 'rails_helper'

RSpec.describe ParkFacade do
  describe '#get_parks' do
    it 'returns the parks as an array' do
      parks = ParkFacade.get_parks('tn')
      require 'pry'; binding.pry 
      expect(parks.first.name).to eq("Andrew Johnson National Historic Site")
      expect(parks).to be_an(Array)
    end
  end
end