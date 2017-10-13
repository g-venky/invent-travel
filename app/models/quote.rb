class Quote < ApplicationRecord
  belongs_to :user
  belongs_to :my_query
end
