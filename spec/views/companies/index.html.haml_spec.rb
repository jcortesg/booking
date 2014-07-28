require 'rails_helper'

RSpec.describe "companies/index", :type => :view do
  before(:each) do
    assign(:companies, [
      Company.create!(
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
      ),
      Company.create!(
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
      )
    ])
  end

  it "renders a list of companies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Addres2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Bank".to_s, :count => 2
    assert_select "tr>td", :text => "Account Type".to_s, :count => 2
    assert_select "tr>td", :text => "Account Number".to_s, :count => 2
    assert_select "tr>td", :text => "Plan Description".to_s, :count => 2
    assert_select "tr>td", :text => "Agreement Conditions".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
