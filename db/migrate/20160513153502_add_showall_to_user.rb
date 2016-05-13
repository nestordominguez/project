class AddShowallToUser < ActiveRecord::Migration
  def change
    add_column :users, :showall, :boolean, :default => true
  end
end
