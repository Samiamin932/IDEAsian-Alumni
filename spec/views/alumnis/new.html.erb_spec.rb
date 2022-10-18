require 'rails_helper'

RSpec.describe "alumnis/new", type: :view do
  before(:each) do
    assign(:alumni, Alumni.new(
      first_name: "MyString",
      middle_name: "MyString",
      last_name: "MyString",
      email: "MyString",
      phone_number: "MyString"
    ))
  end

  it "renders new alumni form" do
    render

    assert_select "form[action=?][method=?]", alumnis_path, "post" do

      assert_select "input[name=?]", "alumni[first_name]"

      assert_select "input[name=?]", "alumni[middle_name]"

      assert_select "input[name=?]", "alumni[last_name]"

      assert_select "input[name=?]", "alumni[email]"

      assert_select "input[name=?]", "alumni[phone_number]"
    end
  end
end
