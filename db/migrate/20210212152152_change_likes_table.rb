class ChangeLikesTable < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:likes, :gossip_id, nil)
    change_column_default(:likes, :comment_id, nil)
  end
end
