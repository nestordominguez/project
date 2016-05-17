class AddShowallToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :showall, :boolean, :default => true
  end
end
