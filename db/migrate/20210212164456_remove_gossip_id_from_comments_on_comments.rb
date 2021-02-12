class RemoveGossipIdFromCommentsOnComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments_on_comments, :gossip_id, :integer
  end
end
