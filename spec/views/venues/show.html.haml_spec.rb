require 'rails_helper'

RSpec.describe "venues/show", :type => :view do
  before(:each) do
    @venue = assign(:venue, Venue.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/About/)
    expect(rendered).to match(/Site/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Address2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Geo/)
    expect(rendered).to match(/Fb/)
    expect(rendered).to match(/Tw/)
    expect(rendered).to match(/Instagram/)
    expect(rendered).to match(/Youtube/)
    expect(rendered).to match(//)
  end
end
