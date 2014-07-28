require 'rails_helper'

RSpec.describe "venues/index", :type => :view do
  before(:each) do
    assign(:venues, [
      Venue.create!(
        :name => "Name",
        :about => "About",
        :site => "Site",
        :email => "Email",
        :phone => "Phone",
        :address => "Address",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :country => "Country",
        :geo => "Geo",
        :fb => "Fb",
        :tw => "Tw",
        :instagram => "Instagram",
        :youtube => "Youtube",
        :company => nil
      ),
      Venue.create!(
        :name => "Name",
        :about => "About",
        :site => "Site",
        :email => "Email",
        :phone => "Phone",
        :address => "Address",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :country => "Country",
        :geo => "Geo",
        :fb => "Fb",
        :tw => "Tw",
        :instagram => "Instagram",
        :youtube => "Youtube",
        :company => nil
      )
    ])
  end

  it "renders a list of venues" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "About".to_s, :count => 2
    assert_select "tr>td", :text => "Site".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Geo".to_s, :count => 2
    assert_select "tr>td", :text => "Fb".to_s, :count => 2
    assert_select "tr>td", :text => "Tw".to_s, :count => 2
    assert_select "tr>td", :text => "Instagram".to_s, :count => 2
    assert_select "tr>td", :text => "Youtube".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
