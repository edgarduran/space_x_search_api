class AddQueryTypeToSearches < ActiveRecord::Migration[5.2]
  def change
    add_column :searches, :query_type, :string
  end
end
