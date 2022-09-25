require 'rails_helper'

RSpec.describe "alumni_assignments/new", type: :view do
  before(:each) do
    assign(:alumni_assignment, AlumniAssignment.new(
      Alumni_id: 1,
      Mentor_id: 1
    ))
  end

  it "renders new alumni_assignment form" do
    render

    assert_select "form[action=?][method=?]", alumni_assignments_path, "post" do

      assert_select "input[name=?]", "alumni_assignment[Alumni_id]"

      assert_select "input[name=?]", "alumni_assignment[Mentor_id]"
    end
  end
end
