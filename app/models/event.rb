class Event < ApplicationRecord
    has_many :wagers
    has_many :users, through: :wagers
end
