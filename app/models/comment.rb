class Comment < ApplicationRecord
  belongs_to :story
  has_many :reply
end
