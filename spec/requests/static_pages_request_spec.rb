require 'rails_helper'

RSpec.describe "StaticPages", type: :request do

  describe "GET /home" do
    it "returns http success" do
      get "/static_pages/home"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /detail" do
    it "returns http success" do
      get "/static_pages/detail"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /order" do
    it "returns http success" do
      get "/static_pages/order"
      expect(response).to have_http_status(:success)
    end
  end

end
