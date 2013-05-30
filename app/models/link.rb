class Link < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  has_many :comments
  attr_accessible :url, :title
end
