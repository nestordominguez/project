class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :address
      t.integer :address_num

      t.timestamps null: false
    end
  end
end
