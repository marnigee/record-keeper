class Condition < ApplicationRecord
  belongs_to_many :albums

  attr_reader :name, :description
end
