class DescriptionRes
  include Mongoid::Document
  field :description, type: String
  field :value, type: Float
  field :type, type: String
  field :name, type: String
end
