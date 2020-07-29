class Story < ApplicationRecord
    has_many :actions
    has_many :payment_historys
    has_many :chapters
    belongs_to :user
end
