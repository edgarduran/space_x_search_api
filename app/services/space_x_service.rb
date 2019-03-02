class SpaceXService
  attr_reader :client

  def initialize
    @client = Faraday.new(:url => 'https://api.spacexdata.com/v3') do |faraday|
      faraday.request  :url_encoded
      faraday.response :logger
      faraday.adapter  Faraday.default_adapter
    end
  end
end
