require 'rails_helper'

describe Post do
  describe 'validations' do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }
  end

  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:tags) }
    it { should have_many(:taggings) }
  end

  describe '#persist_tags' do

  end

  describe '#tag_string' do

  end

  describe '#tag_string=' do

  end
end

  #
  # describe '#owner?' do
  #   it 'should return true if user is owner' do
  #     user = FactoryGirl.create(:user)
  #     review = FactoryGirl.create(:review, user: user)
  #
  #     expect(review.owner?(user)).to eql(true)
  #   end
  #
  #   it 'should return false if user is not owner' do
  #     user = FactoryGirl.create(:user)
  #     user2 = FactoryGirl.create(:user)
  #     review = FactoryGirl.create(:review, user: user)
  #
  #     expect(review.owner?(user2)).to eql(false)
  #   end
  # end
