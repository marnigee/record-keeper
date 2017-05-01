class Condition < ApplicationRecord
  has_and_belongs_to_many :albums

  attr_reader :name, :description
end
