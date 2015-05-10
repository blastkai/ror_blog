class Newcomment < ActiveRecord::Base
  belongs_to :user, :class_name => "User", :foreign_key => "user_id"
  belongs_to :post, :class_name => "Post", :foreign_key => "Post_id"
  validates_presence_of :comment_content
end
