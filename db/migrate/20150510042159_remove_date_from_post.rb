class RemoveDateFromPost < ActiveRecord::Migration
  def change
    remove_column :posts, :date, :date
  end
end
