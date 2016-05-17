class AddAdminToIncidents < ActiveRecord::Migration
  def change
    add_reference :incidents, :admin, index: true, foreign_key: true
  end
end
