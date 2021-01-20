class Story < ApplicationRecord
  
  validates_presence_of :title
  enum status: [:unstarted, :started, :finish, :accepted, :completed, :rejected]
  #relationship
  belongs_to :user
  has_many :comments

  has_rich_text :description
end
