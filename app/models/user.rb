class User < ApplicationRecord

    has_many :posts
    has_many :comments

    validates :username, presence: true, uniqueness: true
    validates :bio, presence: true, length: { minimum: 10 }
    validates :email, presence: true, uniqueness: true
end
