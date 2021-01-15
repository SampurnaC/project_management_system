class Story < ApplicationRecord
  
  validates_presence_of :title
  enum status: [:unstarted, :started, :finish, :accepted, :rejected]
  #relationship
  belongs_to :user

  has_rich_text :description
end
