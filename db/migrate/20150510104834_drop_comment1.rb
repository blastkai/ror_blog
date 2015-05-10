class DropComment1 < ActiveRecord::Migration
  def change
drop_table :comments
  end
end
