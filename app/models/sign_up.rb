class Signup < ApplicationRecord
    belongs_to :camper
    belongs_to :activity

    validates :camper_id, :activity_id, :time presence: true
    validates :time, numerically: {greater_than: 0, less_than: 24}
end