module JsonApiHelpers
  def json_response
    @json_response ||= Hashie::Mash.new( JSON.parse(response.body) )
  end

  def stub_json_response(hash, options={})
    @json_response = json_response
    options.each do |key, value|
      @json_response.send(hash)[key.to_s] = value
    end
    @json_response
  end
end
