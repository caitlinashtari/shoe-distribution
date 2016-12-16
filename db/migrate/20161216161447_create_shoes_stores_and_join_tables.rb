class CreateShoesStoresAndJoinTables < ActiveRecord::Migration[5.0]
  def change
    create_table(:stores) do |t|
      t.column(:name, :string)
    end
    create_table(:shoes) do |t|
      t.column(:name, :string)
    end
    create_table(:shoes_stores) do |t|
      t.belongs_to(:shoe, :integer)
      t.belongs_to(:store, :integer)
    end
  end
end
