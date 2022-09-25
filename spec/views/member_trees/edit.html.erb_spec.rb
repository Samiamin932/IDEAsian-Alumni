require 'rails_helper'

RSpec.describe "member_trees/edit", type: :view do
  before(:each) do
    @member_tree = assign(:member_tree, MemberTree.create!())
  end

  it "renders the edit member_tree form" do
    render

    assert_select "form[action=?][method=?]", member_tree_path(@member_tree), "post" do
    end
  end
end
