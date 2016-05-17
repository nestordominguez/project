class AddCompanyToArea < ActiveRecord::Migration
  def change
    add_reference :areas, :company, index: true, foreign_key: true
  end
end
