require 'rails_helper'

RSpec.describe "mentor_assignments/new", type: :view do
  before(:each) do
    assign(:mentor_assignment, MentorAssignment.new(
      Mentor_id: 1,
      Mentee_id: 1
    ))
  end

  it "renders new mentor_assignment form" do
    render

    assert_select "form[action=?][method=?]", mentor_assignments_path, "post" do

      assert_select "input[name=?]", "mentor_assignment[Mentor_id]"

      assert_select "input[name=?]", "mentor_assignment[Mentee_id]"
    end
  end
end
