require 'rails_helper'

RSpec.describe "mentor_assignments/show", type: :view do
  before(:each) do
    @mentor_assignment = assign(:mentor_assignment, MentorAssignment.create!(
      Mentor_id: 2,
      Mentee_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
