require 'rails_helper'

RSpec.describe "mentees/index", type: :view do
  before(:each) do
    assign(:mentees, [
      Mentee.create!(
        first_name: "First Name",
        middle_name: "Middle Name",
        last_name: "Last Name",
        email: "Email",
        phone_number: "Phone Number"
      ),
      Mentee.create!(
        first_name: "First Name",
        middle_name: "Middle Name",
        last_name: "Last Name",
        email: "Email",
        phone_number: "Phone Number"
      )
    ])
  end

  it "renders a list of mentees" do
    render
    assert_select "tr>td", text: "First Name".to_s, count: 2
    assert_select "tr>td", text: "Middle Name".to_s, count: 2
    assert_select "tr>td", text: "Last Name".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Phone Number".to_s, count: 2
  end
end
