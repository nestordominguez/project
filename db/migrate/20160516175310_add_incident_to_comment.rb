class AddIncidentToComment < ActiveRecord::Migration
  def change
    add_reference :comments, :incident, index: true, foreign_key: true
  end
end
