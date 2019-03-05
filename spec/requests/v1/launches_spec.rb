require 'spec_helper'

RSpec.describe 'launches', type: :request do
  describe 'GET #index' do
    it 'returns all launches' do
      get "/api/v1/launches"
      expect(json_response.launches.count).to eq(91)
    end
  end

  describe 'GET #show' do
    context 'when id provided' do
      it 'returns specific launch' do
        get "/api/v1/launches/18"
        expect(json_response).to eq(
          "launch" => {
            "details"=>nil, "flight_number"=>18, "is_tentative"=>false, "launch_date_local"=>"2014-09-21T01:52:00-04:00", "launch_date_unix"=>1411278720, "launch_date_utc"=>"2014-09-21T05:52:00.000Z", "launch_site"=>{"site_id"=>"ccafs_slc_40", "site_name"=>"CCAFS SLC 40", "site_name_long"=>"Cape Canaveral Air Force Station Space Launch Complex 40"}, "launch_success"=>true, "launch_window"=>0, "launch_year"=>"2014", "links"=>{"article_link"=>"https://www.nasa.gov/press/2014/september/nasa-cargo-launches-to-space-station-aboard-spacex-resupply-mission-0", "flickr_images"=>["https://farm8.staticflickr.com/7608/16661753958_9f61f777e7_o.jpg", "https://farm9.staticflickr.com/8593/16763199166_38ba2cafc8_o.jpg", "https://farm9.staticflickr.com/8655/16789074175_ba03989359_o.png", "https://farm9.staticflickr.com/8659/16166761954_ebc2a72b2a_o.jpg", "https://farm9.staticflickr.com/8620/16642025217_a6852b9499_o.jpg"], "mission_patch"=>"https://images2.imgbox.com/0d/e8/tfdeNslS_o.png", "mission_patch_small"=>"https://images2.imgbox.com/b4/28/cQwcs8qz_o.png", "presskit"=>"https://www.nasa.gov/sites/default/files/files/SpaceX_NASA_CRS-4_PressKit.pdf", "reddit_campaign"=>nil, "reddit_launch"=>"http://www.reddit.com/r/spacex/comments/2grxer", "reddit_media"=>nil, "reddit_recovery"=>nil, "video_link"=>"https://www.youtube.com/watch?v=7YkCh7uOw1Y", "wikipedia"=>"https://en.wikipedia.org/wiki/SpaceX_CRS-4", "youtube_id"=>"7YkCh7uOw1Y"}, "mission_id"=>["EE86F74"], "mission_name"=>"CRS-4", "rocket"=>{"fairings"=>nil, "first_stage"=>{"cores"=>[{"block"=>1, "core_serial"=>"B1010", "flight"=>1, "gridfins"=>false, "land_success"=>false, "landing_intent"=>true, "landing_type"=>"Ocean", "landing_vehicle"=>nil, "legs"=>false, "reused"=>false}]}, "rocket_id"=>"falcon9", "rocket_name"=>"Falcon 9", "rocket_type"=>"v1.1", "second_stage"=>{"block"=>1, "payloads"=>[{"cap_serial"=>"C106", "cargo_manifest"=>"https://www.nasa.gov/sites/default/files/files/SpaceX_CRS-4_Mission_Overview-1.pdf", "customers"=>["NASA (CRS)"], "flight_time_sec"=>2987160, "manufacturer"=>"SpaceX", "mass_returned_kg"=>1486, "mass_returned_lbs"=>3276, "nationality"=>"United States", "norad_id"=>[40210], "orbit"=>"ISS", "orbit_params"=>{"apoapsis_km"=>354.971, "arg_of_pericenter"=>46.2662, "eccentricity"=>0.0113888, "epoch"=>"2014-09-21T05:48:51.000Z", "inclination_deg"=>51.6518, "lifespan_years"=>nil, "longitude"=>nil, "mean_anomaly"=>314.7708, "mean_motion"=>15.98295763, "periapsis_km"=>203.334, "period_min"=>90.095, "raan"=>344.0345, "reference_system"=>"geocentric", "regime"=>"low-earth", "semi_major_axis_km"=>6657.288}, "payload_id"=>"CRS-4", "payload_mass_kg"=>2216, "payload_mass_lbs"=>4885, "payload_type"=>"Dragon 1.1", "reused"=>false}]}}, "ships"=>["AMERICANISLANDER"], "static_fire_date_unix"=>1410912000, "static_fire_date_utc"=>"2014-09-17T00:00:00.000Z", "tbd"=>false, "telemetry"=>{"flight_club"=>nil}, "tentative_max_precision"=>"hour", "timeline"=>{"dragon_bay_door_deploy"=>8400, "dragon_separation"=>600, "dragon_solar_deploy"=>720, "engine_chill"=>-420, "go_for_launch"=>-45, "go_for_prop_loading"=>-2280, "ignition"=>-3, "liftoff"=>0, "maxq"=>60, "meco"=>180, "prelaunch_checks"=>-60, "propellant_pressurization"=>-60, "rp1_loading"=>-2100, "seco-1"=>540, "second_stage_ignition"=>180, "stage1_lox_loading"=>-2100, "stage2_lox_loading"=>-960, "stage_sep"=>180, "webcast_liftoff"=>875}, "upcoming"=>false
          }
          )
      end
    end
  end
end
