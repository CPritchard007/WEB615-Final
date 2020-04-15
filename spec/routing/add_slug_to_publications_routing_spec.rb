require "rails_helper"

RSpec.describe AddSlugToPublicationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/add_slug_to_publications").to route_to("add_slug_to_publications#index")
    end

    it "routes to #new" do
      expect(:get => "/add_slug_to_publications/new").to route_to("add_slug_to_publications#new")
    end

    it "routes to #show" do
      expect(:get => "/add_slug_to_publications/1").to route_to("add_slug_to_publications#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/add_slug_to_publications/1/edit").to route_to("add_slug_to_publications#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/add_slug_to_publications").to route_to("add_slug_to_publications#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/add_slug_to_publications/1").to route_to("add_slug_to_publications#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/add_slug_to_publications/1").to route_to("add_slug_to_publications#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/add_slug_to_publications/1").to route_to("add_slug_to_publications#destroy", :id => "1")
    end
  end
end
