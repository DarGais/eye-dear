class Channel < ApplicationRecord
  has_many :sensor_values
  belongs_to :user
end
