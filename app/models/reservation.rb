class Reservation
  include Mongoid::Document
  field :day, type: String
  field :start_hour, type: Time
  field :unit, type: Integer
  belongs_to :soccer_field
  belongs_to :description_res
end
