require 'rails_helper'

RSpec.describe ParkService do
  describe '#call_for_a_state' do
    it 'returns a list of state parks' do
      data_1 = ParkService.call_for_a_state('tn')
      expect(data_1[:total]).to eq('15')
      expect(data_1[:data].first).to be_a(Hash)
      expect(data_1[:data].first).to have_key(:fullName)
      expect(data_1[:data].first[:fullName]).to eq('Andrew Johnson National Historic Site')
    end
  end
end