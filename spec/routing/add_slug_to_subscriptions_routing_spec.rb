require "rails_helper"

RSpec.describe AddSlugToSubscriptionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/add_slug_to_subscriptions").to route_to("add_slug_to_subscriptions#index")
    end

    it "routes to #new" do
      expect(:get => "/add_slug_to_subscriptions/new").to route_to("add_slug_to_subscriptions#new")
    end

    it "routes to #show" do
      expect(:get => "/add_slug_to_subscriptions/1").to route_to("add_slug_to_subscriptions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/add_slug_to_subscriptions/1/edit").to route_to("add_slug_to_subscriptions#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/add_slug_to_subscriptions").to route_to("add_slug_to_subscriptions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/add_slug_to_subscriptions/1").to route_to("add_slug_to_subscriptions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/add_slug_to_subscriptions/1").to route_to("add_slug_to_subscriptions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/add_slug_to_subscriptions/1").to route_to("add_slug_to_subscriptions#destroy", :id => "1")
    end
  end
end
