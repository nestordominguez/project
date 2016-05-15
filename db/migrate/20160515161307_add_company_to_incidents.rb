class AddCompanyToIncidents < ActiveRecord::Migration
  def change
    add_reference :incidents, :company, index: true, foreign_key: true
  end
end
