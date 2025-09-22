class Reply < ApplicationRecord
  belongs_to :story
  belongs_to :comment
end
