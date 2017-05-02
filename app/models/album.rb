require 'elasticsearch/model'

class Album < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  validates :title, presence: true
  validates :artist, presence: true
  validates :year, presence: true
  belongs_to :condition
  # validates :condition, presence: true
end

Album.import # for auto sync model with elastic search
