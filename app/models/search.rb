class Search < ApplicationRecord
  SEARCH_TYPE = {
    launch_pads: 'launch_pads',
    rockets: 'rockets',
    launches: 'launches'
  }

  validates :query_type, inclusion: {
    in: Search::SEARCH_TYPE.values,
    message: 'not a valid search type'
  }
  validates :query, :query_type, presence: :true

end
