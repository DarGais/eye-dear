class Channel < ApplicationRecord
  has_many :sensor_values
  belongs_to :user

  class Field
    attr_reader :channel, :index, :name

    def initialize(channel, index, name, enabled)
      @channel, @index, @name, @enabled =
        channel, index, name, enabled
    end

    def enabled?
      @enabled
    end
  end

  def fields
    attribute_names.map do |col|
      if col =~ /(field(\d)+)_name/
        Field.new(self,
                  $2.to_i,
                  self[col],
                  self["#{$1}_enable"])
      end
    end.compact.sort {|a,b| a.index <=> b.index}
  end

  def enabled_fields
    fields.select {|field| field.enabled?}
  end
end
