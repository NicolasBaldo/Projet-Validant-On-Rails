class CreateDoctors < ActiveRecord::Migration[7.1]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :speciality
      t.string :zip_code
      t.string :name
      t.references :speciality, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.timestamps
    end
  end
end

