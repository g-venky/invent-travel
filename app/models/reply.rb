class Reply < ApplicationRecord
  belongs_to :user
  has_many   :my_doubts
end
