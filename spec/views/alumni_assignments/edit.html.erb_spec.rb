require 'rails_helper'

RSpec.describe "alumni_assignments/edit", type: :view do
  before(:each) do
    @alumni_assignment = assign(:alumni_assignment, AlumniAssignment.create!(
      Alumni_id: 1,
      Mentor_id: 1
    ))
  end

  it "renders the edit alumni_assignment form" do
    render

    assert_select "form[action=?][method=?]", alumni_assignment_path(@alumni_assignment), "post" do

      assert_select "input[name=?]", "alumni_assignment[Alumni_id]"

      assert_select "input[name=?]", "alumni_assignment[Mentor_id]"
    end
  end
end
