require 'rails_helper'

RSpec.describe "companies/edit", :type => :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :name => "MyString",
      :tax => "",
      :contact_name => "MyString",
      :phone => 1,
      :address => "MyString",
      :addres2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country => "MyString",
      :website => "MyString",
      :email => "MyString",
      :bank => "MyString",
      :account_type => "MyString",
      :account_number => "MyString",
      :plan_description => "MyString",
      :agreement_conditions => "MyString",
      :user => nil,
      :venue => nil
    ))
  end

  it "renders the edit company form" do
    render

    assert_select "form[action=?][method=?]", company_path(@company), "post" do

      assert_select "input#company_name[name=?]", "company[name]"

      assert_select "input#company_tax[name=?]", "company[tax]"

      assert_select "input#company_contact_name[name=?]", "company[contact_name]"

      assert_select "input#company_phone[name=?]", "company[phone]"

      assert_select "input#company_address[name=?]", "company[address]"

      assert_select "input#company_addres2[name=?]", "company[addres2]"

      assert_select "input#company_city[name=?]", "company[city]"

      assert_select "input#company_state[name=?]", "company[state]"

      assert_select "input#company_country[name=?]", "company[country]"

      assert_select "input#company_website[name=?]", "company[website]"

      assert_select "input#company_email[name=?]", "company[email]"

      assert_select "input#company_bank[name=?]", "company[bank]"

      assert_select "input#company_account_type[name=?]", "company[account_type]"

      assert_select "input#company_account_number[name=?]", "company[account_number]"

      assert_select "input#company_plan_description[name=?]", "company[plan_description]"

      assert_select "input#company_agreement_conditions[name=?]", "company[agreement_conditions]"

      assert_select "input#company_user_id[name=?]", "company[user_id]"

      assert_select "input#company_venue_id[name=?]", "company[venue_id]"
    end
  end
end
