class Commentreply < ApplicationRecord
  belongs_to :user
  belongs_to :comment
end
