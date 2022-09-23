require 'rails_helper'

RSpec.describe "mentors/new", type: :view do
  before(:each) do
    assign(:mentor, Mentor.new(
      first_name: "MyString",
      middle_name: "MyString",
      last_name: "MyString",
      email: "MyString",
      phone_number: "MyString"
    ))
  end

  it "renders new mentor form" do
    render

    assert_select "form[action=?][method=?]", mentors_path, "post" do

      assert_select "input[name=?]", "mentor[first_name]"

      assert_select "input[name=?]", "mentor[middle_name]"

      assert_select "input[name=?]", "mentor[last_name]"

      assert_select "input[name=?]", "mentor[email]"

      assert_select "input[name=?]", "mentor[phone_number]"
    end
  end
end
