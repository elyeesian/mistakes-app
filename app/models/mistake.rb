class Mistake < ApplicationRecord
    has_many :user_mistakes, :dependent => :destroy
    has_many :users, through: :user_mistakes
    validates :name, presence: true
    validates :severity, presence: true
    validates :description, presence: true
end
