class AddForeignKeys < ActiveRecord::Migration[5.0]
  def change
    add_column(:stores, :shoe_id, :integer)
    add_column(:shoes, :store_id, :integer)
  end
end
