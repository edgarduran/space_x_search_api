class Search < ApplicationRecord
  SEARCH_TYPE = {
    launch_pads: 'launch_pads',
    rockets: 'rockets',
    launches: 'launches'
  }

  validates :type, inclusion: {
    in: Search::SEARCH_TYPE.values,
    message: 'not a valid search type'
  }

  validates :query, :type, presence: :true
end
