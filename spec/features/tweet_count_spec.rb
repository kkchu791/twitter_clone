require 'rails_helper'

feature "Create a new Peach"

describe "Count tweets on a page", :type => :feature do
  let!(:tweet) { FactoryGirl.create(:tweet) }

  it "renders 20 tweets" do
    visit "/tweets"
    expect(page).to have_selector('div.tweets', count: 20)
  end

  it "renders 20 tweets" do
    visit "/tweets/#{tweet.username}"
    expect(page).to have_selector('div.tweets', count: 20)
  end
end
