class AddCategoriesToIncidents < ActiveRecord::Migration
  def change
    add_reference :incidents, :categorie, index: true, foreign_key: true
  end
end
