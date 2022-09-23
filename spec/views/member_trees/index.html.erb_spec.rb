require 'rails_helper'

RSpec.describe "member_trees/index", type: :view do
  before(:each) do
    assign(:member_trees, [
      MemberTree.create!(),
      MemberTree.create!()
    ])
  end

  it "renders a list of member_trees" do
    render
  end
end
