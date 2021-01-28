class AddIsActiveToTreatments < ActiveRecord::Migration
  def change
    add_column :treatments, :is_active, :boolean
  end
end
