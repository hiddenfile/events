class AddColumnCountToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :comments_count, :integer
    add_column :pictures, :likes_count, :integer
  end
end
