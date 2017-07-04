class CreateChannels < ActiveRecord::Migration[5.0]
  def change
    create_table :channels do |t|
      t.string :name
      t.text :description
      t.string :field1_name
      t.boolean :field1_enable
      t.string :field2_name
      t.boolean :field2_enable
      t.string :field3_name
      t.boolean :field3_enable
      t.string :field4_name
      t.boolean :field4_enable
      t.string :field5_name
      t.boolean :field5_enable
      t.string :field6_name
      t.boolean :field6_enable
      t.string :field7_name
      t.boolean :field7_enable
      t.string :field8_name
      t.boolean :field8_enable
      t.string :api_key
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
