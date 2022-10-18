require 'rails_helper'

RSpec.describe "alumni_assignments/index", type: :view do
  before(:each) do
    assign(:alumni_assignments, [
      AlumniAssignment.create!(
        Alumni_id: 2,
        Mentor_id: 3
      ),
      AlumniAssignment.create!(
        Alumni_id: 2,
        Mentor_id: 3
      )
    ])
  end

  it "renders a list of alumni_assignments" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
