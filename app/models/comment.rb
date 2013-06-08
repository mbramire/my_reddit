class Comment < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  belongs_to :link
  attr_accessible :message, :user_id, :link_id
end