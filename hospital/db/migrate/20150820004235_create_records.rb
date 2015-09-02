class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :name_of_pet
      t.string :type_of_pet
      t.string :breed
      t.string :age
      t.string :weight
      t.string :date_of_last_visit
      t.references :appointment, index: true

      t.timestamps
    end
  end
end
