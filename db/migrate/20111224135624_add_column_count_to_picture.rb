class AddColumnCountToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :comment_count, :integer
    add_column :pictures, :like_count, :integer
  end
end
