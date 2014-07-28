require 'rails_helper'

RSpec.describe "venues/edit", :type => :view do
  before(:each) do
    @venue = assign(:venue, Venue.create!(
      :name => "MyString",
      :about => "MyString",
      :site => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :address => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country => "MyString",
      :geo => "MyString",
      :fb => "MyString",
      :tw => "MyString",
      :instagram => "MyString",
      :youtube => "MyString",
      :company => nil
    ))
  end

  it "renders the edit venue form" do
    render

    assert_select "form[action=?][method=?]", venue_path(@venue), "post" do

      assert_select "input#venue_name[name=?]", "venue[name]"

      assert_select "input#venue_about[name=?]", "venue[about]"

      assert_select "input#venue_site[name=?]", "venue[site]"

      assert_select "input#venue_email[name=?]", "venue[email]"

      assert_select "input#venue_phone[name=?]", "venue[phone]"

      assert_select "input#venue_address[name=?]", "venue[address]"

      assert_select "input#venue_address2[name=?]", "venue[address2]"

      assert_select "input#venue_city[name=?]", "venue[city]"

      assert_select "input#venue_state[name=?]", "venue[state]"

      assert_select "input#venue_country[name=?]", "venue[country]"

      assert_select "input#venue_geo[name=?]", "venue[geo]"

      assert_select "input#venue_fb[name=?]", "venue[fb]"

      assert_select "input#venue_tw[name=?]", "venue[tw]"

      assert_select "input#venue_instagram[name=?]", "venue[instagram]"

      assert_select "input#venue_youtube[name=?]", "venue[youtube]"

      assert_select "input#venue_company_id[name=?]", "venue[company_id]"
    end
  end
end
