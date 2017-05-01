require 'elasticsearch/model'

class Album < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  validates :title, presence: true
  validates :artist, presence: true
  validates :year, presence: true
  has_one :condition
  # validates :condition, presence: true
end
Album.import # for auto sync model with elastic search
