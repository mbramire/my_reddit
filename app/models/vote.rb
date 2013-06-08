class Vote < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  belongs_to :link
  attr_accessible :up, :link_id
  validates :user_id, :uniqueness => { :scope => :link_id }
end
