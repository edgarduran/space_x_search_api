class DropTypeFromSearches < ActiveRecord::Migration[5.2]
  def change
    remove_column :searches, :type
  end
end
