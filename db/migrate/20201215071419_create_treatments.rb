class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.text :name, null: false
      t.references :category
      t.timestamps null: false
    end
  end
end
