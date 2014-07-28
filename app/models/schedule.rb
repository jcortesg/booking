class Schedule
  include Mongoid::Document
  field :day, type: String
  field :open_hour, type: String
  field :clouse_hour, type: String
end
