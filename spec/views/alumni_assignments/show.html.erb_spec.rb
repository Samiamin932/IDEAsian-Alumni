require 'rails_helper'

RSpec.describe "alumni_assignments/show", type: :view do
  before(:each) do
    @alumni_assignment = assign(:alumni_assignment, AlumniAssignment.create!(
      Alumni_id: 2,
      Mentor_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
