class ChangeTempFromIntToFloatSensorReadings < ActiveRecord::Migration[5.1]
  def change
    change_column :sensor_readings, :temperature, :float
  end
end
