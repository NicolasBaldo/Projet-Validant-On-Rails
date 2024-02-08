class AddDoctorIdToSpecialities < ActiveRecord::Migration[6.0]
  def change
    add_reference :specialities, :doctor, null: true, foreign_key: true
  end
end
