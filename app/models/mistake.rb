class Mistake < ApplicationRecord
    has_many :user_mistakes
    has_many :users, through: :user_mistakes
end
