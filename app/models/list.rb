class List < ApplicationRecord
    has_many :bookmarks
    has_many :movies, through: :bookmarks, dependent: :destroy

    validates :name, uniqueness: true, presence: true
    # validates :movie_id, uniqueness: {scope: :list_id, message: "Already in the list"}
end
