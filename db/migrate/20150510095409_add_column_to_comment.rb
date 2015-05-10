class AddColumnToComment < ActiveRecord::Migration
  def change
    add_column :comments, :post_id1, :integer
  end
end
