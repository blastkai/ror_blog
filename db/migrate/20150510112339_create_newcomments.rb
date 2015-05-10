class CreateNewcomments < ActiveRecord::Migration
  def change
    drop_table :newcomments
    create_table :newcomments do |t|
      t.integer :user_id
      t.integer :post_id
      t.text :comment_content

      t.timestamps null: false
    end
  end
end
