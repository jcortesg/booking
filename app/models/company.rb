class Company
  include Mongoid::Document
  field :name, type: String
  field :tax, type: Integer
  field :contact_name, type: String
  field :phone, type: Integer
  field :address, type: String
  field :addres2, type: String
  field :city, type: String
  field :state, type: String
  field :country, type: String
  field :website, type: String
  field :email, type: String
  field :bank, type: String
  field :account_type, type: String
  field :account_number, type: String
  field :plan_description, type: String
  field :agreement_conditions, type: String
  
	has_and_belongs_to_many :users
  has_many :venues

end
