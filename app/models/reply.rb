class Reply < ApplicationRecord
  belongs_to  :seller
  belongs_to  :my_doubt
  belongs_to :my_query
end
