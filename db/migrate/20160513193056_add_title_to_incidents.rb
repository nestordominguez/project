class AddTitleToIncidents < ActiveRecord::Migration
  def change
    add_column :incidents, :tilte, :string
  end
end
