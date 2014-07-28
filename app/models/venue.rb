class Venue
  include Mongoid::Document
  field :name, type: String
  field :about, type: String
  field :site, type: String
  field :email, type: String
  field :phone, type: String
  field :address, type: String
  field :address2, type: String
  field :city, type: String
  field :state, type: String
  field :country, type: String
  field :geo, type: String
  field :fb, type: String
  field :tw, type: String
  field :instagram, type: String
  field :youtube, type: String
	
	has_many :soccer_fields	
	belongs_to :company
end
