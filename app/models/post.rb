class Post < ActiveRecord::Base
  has_many :taggings
  has_many :tags, through: :taggings
  belongs_to :user

  validates :user_id, :title, :body, presence: true

  after_create :persist_tags

  def self.tagged_with(name)
    Tag.find_by_name!(name).posts
  end

  def tag_string=(tags)
    @pending_tags = tags
  end

  def tag_string
    @pending_tags ||= self.tags.map {|t| t.name}.join(', ')
  end

  protected

  def persist_tags
    if @pending_tags
      split_tags = @pending_tags.split(',').map {|t| t.strip.downcase}
      split_tags.each do |tag|
        temp_tag = Tag.find_or_create_by(name: tag)
        temp_tag.taggings.find_or_create_by(post: self)
      end
    end
  end
end


