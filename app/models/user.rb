class User < ApplicationRecord
    has_many :wagers
    has_many :events, through: :wagers
end
