class RemoveCityIdFromUsers2 < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :city_id, :integer
  end
end
