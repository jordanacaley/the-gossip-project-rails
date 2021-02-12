class CreateCommentsOnComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments_on_comments do |t|
      t.text :content
      t.belongs_to :user, index: true
      t.belongs_to :gossip, index: true
      t.references :imageable, polymorphic: true
      t.timestamps
    end
  end
end
