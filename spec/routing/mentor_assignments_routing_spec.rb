require "rails_helper"

RSpec.describe MentorAssignmentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/mentor_assignments").to route_to("mentor_assignments#index")
    end

    it "routes to #new" do
      expect(get: "/mentor_assignments/new").to route_to("mentor_assignments#new")
    end

    it "routes to #show" do
      expect(get: "/mentor_assignments/1").to route_to("mentor_assignments#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/mentor_assignments/1/edit").to route_to("mentor_assignments#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/mentor_assignments").to route_to("mentor_assignments#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/mentor_assignments/1").to route_to("mentor_assignments#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/mentor_assignments/1").to route_to("mentor_assignments#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/mentor_assignments/1").to route_to("mentor_assignments#destroy", id: "1")
    end
  end
end
