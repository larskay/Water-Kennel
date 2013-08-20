class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.text :address
      t.integer :tlf
      t.integer :mobile
      t.integer :zip_code

      t.timestamps
    end
  end
end
