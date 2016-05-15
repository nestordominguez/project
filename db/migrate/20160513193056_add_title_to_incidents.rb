class AddTitleToIncidents < ActiveRecord::Migration
  def change
    add_column :incidents, :title, :string
  end
end
