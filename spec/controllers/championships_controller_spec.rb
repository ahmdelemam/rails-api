require 'rails_helper'
require "cancan/matchers"

RSpec.describe ChampionshipsController, type: :controller do
  let(:user) { FactoryGirl.create(:user) }
  let(:championship) { FactoryGirl.create(:championship, user: user) }
  
  it "APIs Show" do
    get :show, id: championship.id
    json = JSON.parse(response.body)

    expect(response).to be_success
  end
  it "APIs Index" do
    get :index
    json = JSON.parse(response.body)

    expect(response).to be_success
  end
  
  
end
