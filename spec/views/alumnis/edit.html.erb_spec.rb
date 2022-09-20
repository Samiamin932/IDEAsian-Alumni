require 'rails_helper'

RSpec.describe "alumnis/edit", type: :view do
  before(:each) do
    @alumni = assign(:alumni, Alumni.create!(
      first_name: "MyString",
      middle_name: "MyString",
      last_name: "MyString",
      email: "MyString",
      phone_number: "MyString"
    ))
  end

  it "renders the edit alumni form" do
    render

    assert_select "form[action=?][method=?]", alumni_path(@alumni), "post" do

      assert_select "input[name=?]", "alumni[first_name]"

      assert_select "input[name=?]", "alumni[middle_name]"

      assert_select "input[name=?]", "alumni[last_name]"

      assert_select "input[name=?]", "alumni[email]"

      assert_select "input[name=?]", "alumni[phone_number]"
    end
  end
end
