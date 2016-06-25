require 'rails_helper'
require "cancan/matchers"
include CanCan::Ability

RSpec.describe Ability, type: :model do
  let(:admin_user){ FactoryGirl.create(:admin_user) }
  let(:user_user){ FactoryGirl.create(:user_user) }
  let(:guest_user){ FactoryGirl.create(:guest_user) }

  context "when is an admin" do
    subject(:ability){ Ability.new(admin_user) }
    let(:championship){ FactoryGirl.create(:championship) }

    it{ should be_able_to(:manage, :all) }
  end
  context "when is a user" do
    subject(:ability){ Ability.new(user_user) }
    let(:championship){ FactoryGirl.create(:championship) }

    it{ should be_able_to(:create, Championship.new) }
    it{ should be_able_to(:create, Team.new) }
    it{ should be_able_to(:read, Championship.new) }
    it{ should be_able_to(:read, Team.new) }
    it{ should be_able_to(:update, Championship.new) }
    it{ should be_able_to(:update, Team.new) }
    it{ should be_able_to(:destroy, Championship.new) }
    it{ should be_able_to(:destroy, Team.new) }
  end
  
  context "when is a guest" do
    subject(:ability){ Ability.new(guest_user) }

    it{ should_not be_able_to(:create, Championship.new) }
    it{ should_not be_able_to(:create, Team.new) }
    it{ should be_able_to(:read, Championship.new) }
    it{ should be_able_to(:read, Team.new) }
    it{ should_not be_able_to(:update, Championship.new) }
    it{ should_not be_able_to(:update, Team.new) }
    it{ should_not be_able_to(:destroy, Championship.new) }
    it{ should_not be_able_to(:destroy, Team.new) }
  end
end
