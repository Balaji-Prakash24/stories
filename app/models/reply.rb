class Reply < ApplicationRecord
  belongs_to :story
  belongs_to :comment

  validates :story_id, presence: true
  validates :comment_id, presence: true
  validates :user_name, presence: true
  validates :description, presence: true
end
