class RemoveJoinTable < ActiveRecord::Migration[5.0]
  def change
    drop_table(:shoes_stores)
  end
end
