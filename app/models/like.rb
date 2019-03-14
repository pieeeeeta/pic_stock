class Like < ApplicationRecord
  belongs_to :picpost, counter_cache: :likes_count
  belongs_to :user
end
