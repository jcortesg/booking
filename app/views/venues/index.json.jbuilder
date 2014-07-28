json.array!(@venues) do |venue|
  json.extract! venue, :id, :name, :about, :site, :email, :phone, :address, :address2, :city, :state, :country, :geo, :fb, :tw, :instagram, :youtube, :company_id
  json.url venue_url(venue, format: :json)
end
