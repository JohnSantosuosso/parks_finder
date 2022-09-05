require 'rails_helper'

RSpec.describe ParkFacade do
  describe '#get_parks' do
    it 'returns the parks as an array' do
      parks = ParkFacade.get_parks('tn')
      #expect(parks.first.title).to eq('The Batman')
      expect(parks).to be_an(Array)
    end
  end
end