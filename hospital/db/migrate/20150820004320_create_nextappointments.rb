class CreateNextappointments < ActiveRecord::Migration
  def change
    create_table :nextappointments do |t|
      t.string :date_of_next_appointment
      t.string :reason_for_visit
      t.references :appointment, index: true

      t.timestamps
    end
  end
end
