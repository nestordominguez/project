class AddAdminToComment < ActiveRecord::Migration
  def change
    add_reference :comments, :admin, index: true, foreign_key: true
  end
end
