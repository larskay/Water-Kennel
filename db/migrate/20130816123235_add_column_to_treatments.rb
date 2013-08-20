class AddColumnToTreatments < ActiveRecord::Migration
  def change
    add_column :treatments, :date, :datetime
  end
end
