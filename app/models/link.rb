class Link < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  has_many :comments
  has_many :votes
  attr_accessible :url, :title
end
