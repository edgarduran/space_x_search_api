# README

This README would normally document whatever steps are necessary to get the
application up and running.

* Ruby (2.5.3)
* Rails (5.2.2)

Deployed to [Heroku](https://space-x-search-api.herokuapp.com)

Models:
1. Launches
  - Index - /api/v1/launches
  - Show - /api/v1/launches?id={{flight_number}}
2. Rockets
  - Index - /api/v1/rockets
  - Show - /api/v1/rockets?id={{rocket_id}}
3. Launch Pads
  - Index - /api/v1/launch_pads
  - Show - /api/v1/launch_pads?id={{site_id}}

SpaceX API [Documentation](https://docs.spacexdata.com/)
