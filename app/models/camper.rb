class Camper < ApplicationRecord
    has_many :sign_ups
    has_many :activities, through: :sign_ups

    validates :name, :age, presence: true
    validates :name, uniqueness: true
    validates :age, numericality: {greater_than: 7, less_than: 19}
end
