class AddNameMgToTreatments < ActiveRecord::Migration
  def change
    add_column :treatments, :name_mg, :text
  end
end
