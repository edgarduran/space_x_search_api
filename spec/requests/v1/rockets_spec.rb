require 'spec_helper'

RSpec.describe 'rockets', type: :request do
  describe 'GET #index' do
    it 'returns all rockets' do
      get "/api/v1/rockets"
      expect(json_response.rockets.count).to eq(4)
    end
  end

  describe 'GET #show' do
    context 'when id provided' do
      it 'returns specific launch' do
        get "/api/v1/rockets/falconheavy"
        expect(json_response).to eq(
          "rocket" => {
            "active"=>true, "boosters"=>2, "company"=>"SpaceX", "cost_per_launch"=>90000000, "country"=>"United States", "description"=>"With the ability to lift into orbit over 54 metric tons (119,000 lb)--a mass equivalent to a 737 jetliner loaded with passengers, crew, luggage and fuel--Falcon Heavy can lift more than twice the payload of the next closest operational vehicle, the Delta IV Heavy, at one-third the cost.", "diameter"=>{"feet"=>39.9, "meters"=>12.2}, "engines"=>{"engine_loss_max"=>6, "layout"=>"octaweb", "number"=>27, "propellant_1"=>"liquid oxygen", "propellant_2"=>"RP-1 kerosene", "thrust_sea_level"=>{"kN"=>845, "lbf"=>190000}, "thrust_to_weight"=>180.1, "thrust_vacuum"=>{"kN"=>914, "lbf"=>205500}, "type"=>"merlin", "version"=>"1D+"}, "first_flight"=>"2018-02-06", "first_stage"=>{"burn_time_sec"=>162, "cores"=>3, "engines"=>27, "fuel_amount_tons"=>1155, "reusable"=>true, "thrust_sea_level"=>{"kN"=>22819, "lbf"=>5130000}, "thrust_vacuum"=>{"kN"=>24681, "lbf"=>5548500}}, "flickr_images"=>["https://farm5.staticflickr.com/4599/38583829295_581f34dd84_b.jpg", "https://farm5.staticflickr.com/4645/38583830575_3f0f7215e6_b.jpg", "https://farm5.staticflickr.com/4696/40126460511_b15bf84c85_b.jpg", "https://farm5.staticflickr.com/4711/40126461411_aabc643fd8_b.jpg"], "height"=>{"feet"=>229.6, "meters"=>70}, "id"=>3, "landing_legs"=>{"material"=>"carbon fiber", "number"=>12}, "mass"=>{"kg"=>1420788, "lb"=>3125735}, "payload_weights"=>[{"id"=>"leo", "kg"=>63800, "lb"=>140660, "name"=>"Low Earth Orbit"}, {"id"=>"gto", "kg"=>26700, "lb"=>58860, "name"=>"Geosynchronous Transfer Orbit"}, {"id"=>"mars", "kg"=>16800, "lb"=>37040, "name"=>"Mars Orbit"}, {"id"=>"pluto", "kg"=>3500, "lb"=>7720, "name"=>"Pluto Orbit"}], "rocket_id"=>"falconheavy", "rocket_name"=>"Falcon Heavy", "rocket_type"=>"rocket", "second_stage"=>{"burn_time_sec"=>397, "engines"=>1, "fuel_amount_tons"=>90, "payloads"=>{"composite_fairing"=>{"diameter"=>{"feet"=>17.1, "meters"=>5.2}, "height"=>{"feet"=>43, "meters"=>13.1}}, "option_1"=>"dragon", "option_2"=>"composite fairing"}, "reusable"=>false, "thrust"=>{"kN"=>934, "lbf"=>210000}}, "stages"=>2, "success_rate_pct"=>100, "wikipedia"=>"https://en.wikipedia.org/wiki/Falcon_Heavy"
          }
          )
      end
    end
  end
end
