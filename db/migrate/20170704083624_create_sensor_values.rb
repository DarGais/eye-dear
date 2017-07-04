class CreateSensorValues < ActiveRecord::Migration[5.0]
  def change
    create_table :sensor_values do |t|
      t.float :value1
      t.float :value2
      t.float :value3
      t.float :value4
      t.float :value5
      t.float :value6
      t.float :value7
      t.float :value8
      t.datetime :timestamp
      t.belongs_to :channel, foreign_key: true

      t.timestamps
    end
  end
end
