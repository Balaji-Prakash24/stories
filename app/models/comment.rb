class Comment < ApplicationRecord
  belongs_to :story
  has_many :reply
  validates :user_name, presence: true
  validates :description, presence: true
  validates :story_id, presence: true
end
