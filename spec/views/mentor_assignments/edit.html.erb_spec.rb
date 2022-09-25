require 'rails_helper'

RSpec.describe "mentor_assignments/edit", type: :view do
  before(:each) do
    @mentor_assignment = assign(:mentor_assignment, MentorAssignment.create!(
      Mentor_id: 1,
      Mentee_id: 1
    ))
  end

  it "renders the edit mentor_assignment form" do
    render

    assert_select "form[action=?][method=?]", mentor_assignment_path(@mentor_assignment), "post" do

      assert_select "input[name=?]", "mentor_assignment[Mentor_id]"

      assert_select "input[name=?]", "mentor_assignment[Mentee_id]"
    end
  end
end
