class RemoveCommentFromIncidents < ActiveRecord::Migration
  def change
    remove_column :incidents, :comment, :string
  end
end
