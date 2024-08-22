class Perfume < ApplicationRecord
    has_many :perfume_results, dependent: :destroy
    belongs_to :user
end
