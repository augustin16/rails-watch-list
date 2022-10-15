class Movie < ApplicationRecord
    validates :name, uniqueness: true
    validates :overview, presence: true

end
