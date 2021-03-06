class Page < ApplicationRecord
  # attr_accessor :link_url
  
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  mappings do
    indexes :id
    indexes :title, analyzer: "ik_max_word", search_analyzer: "ik_max_word", type: 'string'
    indexes :body, analyzer: "ik_max_word", search_analyzer: "ik_max_word", type: 'string'
  end

  # self.link_url = "test"
  # after_save :test
  # def test
  #   self.link_url = "test"
  # end
  
end
