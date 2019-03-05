require 'spec_helper'

RSpec.describe 'launch pads', type: :request do
  describe 'GET #index' do
    it 'returns all launch pads' do
      get "/api/v1/launch_pads"
      expect(json_response.pads.count).to eq(6)
    end
  end

  describe 'GET #show' do
    context 'when id provided' do
      it 'returns specific launch pad' do
        get "/api/v1/launch_pads/vafb_slc_4e"
        expect(json_response).to eq(
          "pad" => {
            "attempted_launches"=>14,
            "details"=>"SpaceX primary west coast launch pad for polar orbits and sun synchronous orbits, primarily used for Iridium. Also intended to be capable of launching Falcon Heavy.",
            "id"=>6, "location"=>{"latitude"=>34.632093, "longitude"=>-120.610829, "name"=>"Vandenberg Air Force Base", "region"=>"California"},
            "site_id"=>"vafb_slc_4e", "site_name_long"=>"Vandenberg Air Force Base Space Launch Complex 4E",
            "status"=>"active", "successful_launches"=>14, "vehicles_launched"=>["Falcon 9"],
            "wikipedia"=>"https://en.wikipedia.org/wiki/Vandenberg_AFB_Space_Launch_Complex_4"
          }
          )
      end
    end
  end
end
