class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :nickname
      t.string :name
      t.string :regnr
      t.string :allergies
      t.datetime :born
      t.boolean :IDtagged
      t.string :race

      t.timestamps
    end
  end
end
