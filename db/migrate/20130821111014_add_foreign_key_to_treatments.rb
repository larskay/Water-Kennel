class AddForeignKeyToTreatments < ActiveRecord::Migration
  def change
    add_column :treatments, :dog_id, :integer
    add_index :treatments, :dog_id
  end
end
