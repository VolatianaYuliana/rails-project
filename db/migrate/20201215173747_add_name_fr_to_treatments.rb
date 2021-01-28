class AddNameFrToTreatments < ActiveRecord::Migration
  def change
    add_column :treatments, :name_fr, :text
  end
end
