require "rails_helper"

RSpec.describe BankSlipsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bank_slips").to route_to("bank_slips#index")
    end

    it "routes to #new" do
      expect(get: "/bank_slips/new").to route_to("bank_slips#new")
    end

    it "routes to #show" do
      expect(get: "/bank_slips/1").to route_to("bank_slips#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bank_slips/1/edit").to route_to("bank_slips#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bank_slips").to route_to("bank_slips#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bank_slips/1").to route_to("bank_slips#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bank_slips/1").to route_to("bank_slips#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bank_slips/1").to route_to("bank_slips#destroy", id: "1")
    end
  end
end
