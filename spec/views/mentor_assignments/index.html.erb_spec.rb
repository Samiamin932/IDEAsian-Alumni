require 'rails_helper'

RSpec.describe "mentor_assignments/index", type: :view do
  before(:each) do
    assign(:mentor_assignments, [
      MentorAssignment.create!(
        Mentor_id: 2,
        Mentee_id: 3
      ),
      MentorAssignment.create!(
        Mentor_id: 2,
        Mentee_id: 3
      )
    ])
  end

  it "renders a list of mentor_assignments" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
