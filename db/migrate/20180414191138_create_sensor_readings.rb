class CreateSensorReadings < ActiveRecord::Migration[5.1]
  def change
    create_table :sensor_readings do |t|
      t.boolean :motion
      t.boolean :infrared
      t.integer :light
      t.integer :temperature

      t.timestamps
    end
  end
end
