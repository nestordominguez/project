class RemoveCategoriesFromIncidents < ActiveRecord::Migration
  def change
    remove_reference :incidents, :category, index: true, foreign_key: true
  end
end
