require "rails_helper"

RSpec.describe MemberTreesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/member_trees").to route_to("member_trees#index")
    end

    it "routes to #new" do
      expect(get: "/member_trees/new").to route_to("member_trees#new")
    end

    it "routes to #show" do
      expect(get: "/member_trees/1").to route_to("member_trees#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/member_trees/1/edit").to route_to("member_trees#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/member_trees").to route_to("member_trees#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/member_trees/1").to route_to("member_trees#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/member_trees/1").to route_to("member_trees#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/member_trees/1").to route_to("member_trees#destroy", id: "1")
    end
  end
end
