class User < ApplicationRecord
    has_many :user_mistakes
    has_many :mistakes, through: :user_mistakes
end
