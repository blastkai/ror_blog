class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comment
	validates_presence_of :title
	validates_presence_of :content
end