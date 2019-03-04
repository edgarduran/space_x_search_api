class SpaceXService
  attr_reader :client

  def initialize
    @client = Faraday.new(:url => 'https://api.spacexdata.com/v3/') do |faraday|
      faraday.request  :url_encoded
      faraday.response :logger
      faraday.adapter  Faraday.default_adapter
    end
  end

  def get_all(options={})
    results = parse_json(client.get(options[:model]))
  end

  def query(options={})
    results = parse_json(client.get("#{options[:model]}/#{options[:id]}"))
  end

  def query_params(options={})

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

  def all_launches
    results = parse_json(client.get("launches"))
  end

  def find_launch(id)
    result = parse_json(client.get("launches/#{id}"))
  end

  def search(options={})
    results = parse_json(client.get("launches"))
  end

  def parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
