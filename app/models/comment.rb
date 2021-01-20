class Comment < ApplicationRecord

  validates_presence_of :comment_body

  #relationship
  belongs_to :user
  belongs_to :story
end
