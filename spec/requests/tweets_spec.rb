require 'rails_helper'

describe "tweets", type: :request do
  let!(:tweet) { FactoryGirl.create(:tweet) }

  describe 'GET /tweets tweets' do
    it "should render tweets index template with casetab tweets" do
      get "/tweets"
      expect(response).to have_http_status(200)
      expect(response).to render_template('index')
      expect(response.body).to include("Casetabs")
    end
  end

  describe 'GET /tweets/username' do
    it "should render tweet show template with user by id tweets" do
      get "/tweets/#{tweet.username}"
      expect(response).to have_http_status(200)
      expect(response).to render_template('show')
      expect(response.body).to include("#{tweet.username}")
    end
  end
end