class Reply < ApplicationRecord
  belongs_to  :user
  belongs_to  :my_doubt
end
