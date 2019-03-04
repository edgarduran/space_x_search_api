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
    save_search(options)
    results = parse_json(client.get("#{options[:model]}/#{options[:id]}"))
  end

  def parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def save_search(options={})
    search = case
             when options[:query]
               options[:query]
             when options[:id]
               options[:id]
             end

    Search.create(query: search, query_type: options[:model]) if search
  end
end
