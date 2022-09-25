require 'rails_helper'

RSpec.describe "mentees/edit", type: :view do
  before(:each) do
    @mentee = assign(:mentee, Mentee.create!(
      first_name: "MyString",
      middle_name: "MyString",
      last_name: "MyString",
      email: "MyString",
      phone_number: "MyString"
    ))
  end

  it "renders the edit mentee form" do
    render

    assert_select "form[action=?][method=?]", mentee_path(@mentee), "post" do

      assert_select "input[name=?]", "mentee[first_name]"

      assert_select "input[name=?]", "mentee[middle_name]"

      assert_select "input[name=?]", "mentee[last_name]"

      assert_select "input[name=?]", "mentee[email]"

      assert_select "input[name=?]", "mentee[phone_number]"
    end
  end
end
