class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string :comment

      t.timestamps null: false
    end
  end
end
