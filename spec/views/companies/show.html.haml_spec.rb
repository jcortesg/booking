require 'rails_helper'

RSpec.describe "companies/show", :type => :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :name => "Name",
      :tax => "",
      :contact_name => "Contact Name",
      :phone => 1,
      :address => "Address",
      :addres2 => "Addres2",
      :city => "City",
      :state => "State",
      :country => "Country",
      :website => "Website",
      :email => "Email",
      :bank => "Bank",
      :account_type => "Account Type",
      :account_number => "Account Number",
      :plan_description => "Plan Description",
      :agreement_conditions => "Agreement Conditions",
      :user => nil,
      :venue => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Contact Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Addres2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Bank/)
    expect(rendered).to match(/Account Type/)
    expect(rendered).to match(/Account Number/)
    expect(rendered).to match(/Plan Description/)
    expect(rendered).to match(/Agreement Conditions/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
