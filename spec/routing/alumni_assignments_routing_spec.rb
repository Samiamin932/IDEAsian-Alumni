require "rails_helper"

RSpec.describe AlumniAssignmentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/alumni_assignments").to route_to("alumni_assignments#index")
    end

    it "routes to #new" do
      expect(get: "/alumni_assignments/new").to route_to("alumni_assignments#new")
    end

    it "routes to #show" do
      expect(get: "/alumni_assignments/1").to route_to("alumni_assignments#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/alumni_assignments/1/edit").to route_to("alumni_assignments#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/alumni_assignments").to route_to("alumni_assignments#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/alumni_assignments/1").to route_to("alumni_assignments#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/alumni_assignments/1").to route_to("alumni_assignments#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/alumni_assignments/1").to route_to("alumni_assignments#destroy", id: "1")
    end
  end
end
