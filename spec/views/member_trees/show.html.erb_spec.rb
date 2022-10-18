require 'rails_helper'

RSpec.describe "member_trees/show", type: :view do
  before(:each) do
    @member_tree = assign(:member_tree, MemberTree.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
