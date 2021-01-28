class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :first_name, null: false
      t.text :last_name
      t.references :treatment
      t.timestamps null: false
    end
  end
end
