require 'rails_helper'

RSpec.describe "mentees/show", type: :view do
  before(:each) do
    @mentee = assign(:mentee, Mentee.create!(
      first_name: "First Name",
      middle_name: "Middle Name",
      last_name: "Last Name",
      email: "Email",
      phone_number: "Phone Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Middle Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone Number/)
  end
end
