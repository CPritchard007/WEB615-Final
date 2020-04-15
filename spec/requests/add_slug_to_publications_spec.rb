require 'rails_helper'

RSpec.describe "AddSlugToPublications", type: :request do
  describe "GET /add_slug_to_publications" do
    it "works! (now write some real specs)" do
      get add_slug_to_publications_path
      expect(response).to have_http_status(200)
    end
  end
end
