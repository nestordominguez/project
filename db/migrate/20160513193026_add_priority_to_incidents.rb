class AddPriorityToIncidents < ActiveRecord::Migration
  def change
    add_column :incidents, :priority, :string
  end
end
