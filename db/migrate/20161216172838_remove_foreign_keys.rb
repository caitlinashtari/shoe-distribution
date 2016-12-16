class RemoveForeignKeys < ActiveRecord::Migration[5.0]
  def change
    remove_column(:stores, :shoe_id, :integer)
    remove_column(:shoes, :store_id, :integer)
  end
end
