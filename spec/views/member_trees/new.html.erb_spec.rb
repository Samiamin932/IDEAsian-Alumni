require 'rails_helper'

RSpec.describe "member_trees/new", type: :view do
  before(:each) do
    assign(:member_tree, MemberTree.new())
  end

  it "renders new member_tree form" do
    render

    assert_select "form[action=?][method=?]", member_trees_path, "post" do
    end
  end
end
