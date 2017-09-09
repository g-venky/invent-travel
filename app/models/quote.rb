class Quote < ApplicationRecord
  belongs_to :seller
  belongs_to :my_query
end
