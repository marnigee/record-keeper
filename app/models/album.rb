require 'elasticsearch/model'

class Album < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
end
Album.import force: true # for auto sync model with elastic search
