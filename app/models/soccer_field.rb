class SoccerField
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :picture, type: String
  belongs_to :venue
	has_many :reservations
end
