class Tagging < ActiveRecord::Base
  belongs_to :tag
  belongs_to :post

  validates :post_id, :tag_id, presence: true
end
