class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :date_of_visit
      t.string :customer
      t.string :requires_reminder
      t.string :reason_of_visit
      t.references :doctor, index: true
      t.references :record, index: true

      t.timestamps
    end
  end
end
