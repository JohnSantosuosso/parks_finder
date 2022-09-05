class ParkFacade
  class << self
    def get_parks(state)
      data = ParkService.call_for_a_state(state)
      data[:data].map do |park|
        Park.new(park)
      end
    end
  end
end