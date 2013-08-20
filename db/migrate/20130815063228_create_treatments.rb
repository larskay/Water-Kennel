class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.boolean :full_treatment
      t.boolean :bath
      t.boolean :hair_dry
      t.boolean :ears
      t.boolean :teeth
      t.boolean :claws
      t.boolean :shaving
      t.boolean :napping
      t.boolean :brush
      t.boolean :form_cut
      t.boolean :walk
      t.integer :minutes
      t.decimal :price

      t.timestamps
    end
  end
end
