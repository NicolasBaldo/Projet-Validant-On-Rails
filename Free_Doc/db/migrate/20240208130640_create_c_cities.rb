class CreateCCities < ActiveRecord::Migration[7.1]
  def change
    create_table :c_cities do |t|
      t.string :city_name

      t.timestamps
    end
  end
end
