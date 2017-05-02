require 'elasticsearch/model'

class Album < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  validates :title, presence: true
  validates :artist, presence: true
  validates :year, presence: true, 
    numericality: {
      only_integer: true,
      less_than: 10_000
    }

  belongs_to :condition
  # validates :condition, presence: true
end

Album.import # for auto sync model with elastic search
