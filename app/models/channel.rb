class Channel < ApplicationRecord
  has_many :sensor_values
  belongs_to :user

  def enabled_field_numbers
    attribute_names.map do |col|
      if col =~ /field(\d)+_enable/ && self[col]
        $1
      end
    end.compact
  end
end
