class SpaceXService
  attr_reader :client

  def initialize
    @client = Faraday.new(:url => 'https://api.spacexdata.com/v3/') do |faraday|
      faraday.request  :url_encoded
      faraday.response :logger
      faraday.adapter  Faraday.default_adapter
    end
  end

  def all_rockets
    results = parse_json(client.get("rockets"))
  end

  def find_rocket(id)
    result = parse_json(client.get("rockets/#{id}"))
  end

  def all_pads
    results = parse_json(client.get("launchpads"))
  end

  def find_pad(id)
    result = parse_json(client.get("launchpads/#{id}"))
  end

  def parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
