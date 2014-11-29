class AddNullFalseToTaggings < ActiveRecord::Migration
  def change
    change_column :taggings, :post_id, :integer, :null => false
    change_column :taggings, :tag_id, :integer, :null => false
  end
end
