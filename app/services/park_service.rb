class ParkService
  class << self
    def call_for_a_state(state)
      response = connection.get("api/v1/parks?stateCode=#{state}")
      parse_data(response)
    end

  private
    def connection
      Faraday.new(url: "https://developer.nps.gov") do |faraday|
        faraday.params["api_key"] = ENV['nps_key']
      end
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end