class Category < ApplicationRecord
  scope :order_by_created_at, -> { order(created_at: :DESC)}
end
