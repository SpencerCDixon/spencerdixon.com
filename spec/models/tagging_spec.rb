require 'rails_helper'

describe Tagging do
  describe 'validations' do
    it { should validate_presence_of(:post_id) }
    it { should validate_presence_of(:tag_id) }
  end

  describe 'associatons' do
    it { should belong_to(:tag) }
    it { should belong_to(:post) }
  end
end
