class User < ApplicationRecord
    has_many :user_mistakes, :dependent => :destroy
    has_many :mistakes, through: :user_mistakes
end
