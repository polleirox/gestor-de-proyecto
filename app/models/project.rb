class Project < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :start, presence: true
    validates :end, presence: true
    validates :state, presence: true
    scope :find_valid, -> { where("state > ?", :state) }
end
