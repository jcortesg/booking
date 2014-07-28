json.array!(@companies) do |company|
  json.extract! company, :id, :name, :tax, :contact_name, :phone, :address, :addres2, :city, :state, :country, :website, :email, :bank, :account_type, :account_number, :plan_description, :agreement_conditions, :user_id, :venue_id
  json.url company_url(company, format: :json)
end
