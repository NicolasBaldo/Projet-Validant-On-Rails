class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.references :doctor, foreign_key: true
      t.references :patient, foreign_key: true
      t.references :city, foreign_key: true
      t.timestamps
    end
  end
end
