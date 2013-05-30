class Link < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  attr_accessible :url, :title
end
